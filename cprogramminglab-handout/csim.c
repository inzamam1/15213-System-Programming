// Necessary libraries
#include "cachelab.h"
#include <getopt.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
csim_stats_t stats = {0};
typedef unsigned long int uint64_t;
typedef struct {
    int dirty;
    int valid;
    int lru;
    uint64_t tag;
} cacheLine;
void visit_cache(uint64_t addr, char *opcode);

typedef cacheLine *cacheSet;
typedef cacheSet *Cache;

Cache cache;
// int hits = 0;
// int misses = 0;
// int evictions = 0;
unsigned long s = 0, b = 0, E = 0, S;
// int dirty_bytes_in_cache = 0;
// int dirty_bytes_evicted = 0;

// function for wrong usage + when pressed help
void usage(void) {
    printf("Usage: ./csim [-v] -s <s> -E <E> -b <b> -t <trace >\n");
    printf("       ./csim -h\n\n");
    printf("  -h           Print this help message and exit\n");
    printf("  -v           Verbose mode: report effects of each memory "
           "operation\n");
    printf("  -s <s>       Number of set index bits (there are 2**s sets)\n");
    printf("  -b <b>       Number of block bits (there are 2**b blocks)\n");
    printf("  -E <E>       Number of lines per set ( associativity )\n");
    printf("  -t <trace>   File name of the memory trace to process\n");
    exit(0);
}

// Function to parse through the trace file
int trace_file_parser(const char *t) {
    // 2 + 16+ 2
    int linelen = 20;
    int line_len = 0;
    FILE *tfp = fopen(t, "rt");
    // check if there was error opening the file and then return 1
    if (!tfp) {
        printf("Error opening file\n");
        return 1;
    }
    char linebuf[linelen];
    int parse_error = 0;
    while (fgets(linebuf, linelen, tfp)) {
        char opcode;
        uint64_t addr;
        int size;
        // unsigned long size;
        int args =
            sscanf(linebuf, "%c %lx,%d%n", &opcode, &addr, &size, &line_len);
        if (args != 3 || addr < 0 || size < 0 || line_len > linelen - 1 ||
            (opcode != 'L' && opcode != 'S')) {
            parse_error = 1;
            printf("Arguments wrong\n");
            fclose(tfp);
            return parse_error;
        } else {
            visit_cache(addr, &opcode);
            // printf("return value:%d\n",ret);
        }
        // call to the function to load, store operation.
        // printf("Opcode: %c Address: %lx, Size: %d Length of
        // line:%d\n",opcode,addr,size,line_len);
    }
    fclose(tfp);
    return parse_error;
}
int main(int argc, char **argv) {
    int ch = 0;
    char *t = NULL;
    // unsigned int s1;
    while ((ch = getopt(argc, argv, "s:b:E:t:h")) != -1) {
        switch (ch) {
        case 's':
            // printf("A value entered for s\n");
            s = strtoul(optarg, NULL, 10);
            // s1=(unsigned int)s;
            // s=atoi(optarg);
            break;
        case 'b':
            // printf("A value entered for b\n");
            b = strtoul(optarg, NULL, 10);
            // b=atoi(optarg);
            break;
        case 'E':
            // printf("A value entered for E\n");
            E = strtoul(optarg, NULL, 10);
            // E=atoi(optarg);
            break;
        case 't':
            // printf("A value entered for t\n");
            t = optarg;
            // printf("Trace file value:%s\n",t);
            // printf("pointer to trace: %s\n",t);
            break;
        case 'h':
            usage();
        default:
            usage();
        }
    }
    // check if the values are positive
    if (E <= 0 || s < 0 || b < 0 || t == NULL) {
        usage();
    }
    // malloc and other stuff
    // Calculate 2^s
    S = (1 << s);
    // printf("Power of S:%d",S);
    cache = (Cache)malloc(sizeof(cacheSet) * S);
    if (cache == NULL) {
        return -1;
    }
    for (unsigned long i = 0; i < S; i++) {
        cache[i] = (cacheSet)calloc(E, sizeof(cacheLine));
        if (cache[i] == NULL) {
            return -1;
        }
    }
    int trace = trace_file_parser(t);
    for (unsigned long i = 0; i < S; i++) {
        free(cache[i]);
    }
    free(cache);
    if (trace == 1) {
        printf("error in trace file\n");
    }
    // printf("Hits:%d Misses:%d Evictions:%d Dirty_bytes_in_cache:%d
    // Dirty_bytes_in_memory:%d
    // \n",stats.hits,stats.misses,stats.evictions,stats.dirty_bytes,stats.dirty_evictions);
    printSummary(&stats);
    return 0;
}

void visit_cache(uint64_t addr, char *opcode) {
    uint64_t tag = addr >> (s + b);
    uint64_t setIndex = (addr >> b) & ((1 << s) - 1);
    unsigned long evictIndex = 0;
    long empty = -1;
    cacheSet cacheSet = cache[setIndex];
    for (unsigned long i = 0; i < E; i++) {
        if (cacheSet[i].valid) {
            if (cacheSet[i].tag == tag) {
                stats.hits++;
                cacheSet[i].lru = 1;
                if (*opcode == 'S') {
                    if (!cacheSet[i].dirty) {
                        cacheSet[i].dirty = 1;
                        stats.dirty_bytes += (1 << b);
                    }
                }
                return;
            }
            cacheSet[i].lru++;
            if (cacheSet[i].lru > cacheSet[evictIndex].lru) {
                evictIndex = i;
            }
        } else {
            empty = (long)i;
        }
    }
    stats.misses++;
    if (empty != -1) {
        cacheSet[empty].valid = 1;
        cacheSet[empty].lru = 1;
        cacheSet[empty].tag = tag;
        if (*opcode == 'S') {
            cacheSet[empty].dirty = 1;
            stats.dirty_bytes += (1 << b);
        } else {
            cacheSet[empty].dirty = 0;
        }
        return;

    } else {
        stats.evictions++;
        if (cacheSet[evictIndex].dirty) {
            stats.dirty_evictions += (1 << b);
            stats.dirty_bytes -= (1 << b);
        }
        cacheSet[evictIndex].tag = tag;
        cacheSet[evictIndex].lru = 1;
        if (*opcode == 'S') {
            cacheSet[evictIndex].dirty = 1;
            stats.dirty_bytes += (1 << b);
        } else {
            cacheSet[evictIndex].dirty = 0;
        }

        return;
    }
    // printf("Hits:%d Misses:%d Evictions:%d",hits,misses,evictions);
}
