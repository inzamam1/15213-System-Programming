/**
 * @file queue.c
 * @brief Implementation of a queue that supports FIFO and LIFO operations.
 *
 * This queue implementation uses a singly-linked list to represent the
 * queue elements. Each queue element stores a string value.
 *
 * Assignment for basic C skills diagnostic.
 * Developed for courses 15-213/18-213/15-513 by R. E. Bryant, 2017
 * Extended to store strings, 2018
 *
 * TODO: fill in your name and Andrew ID
 * @author Inzamam Sayyed <isayyed@andrew.cmu.edu>
 */

#include "queue.h"
#include "harness.h"

#include <stdlib.h>
#include <string.h>

/**
 * @brief Allocates a new queue
 * @return The new queue, or NULL if memory allocation failed
 */
queue_t *queue_new(void) {
    queue_t *q = malloc(sizeof(queue_t));
    /* What if malloc returned NULL? */
    // https://www.youtube.com/watch?v=7icNeEZ8PDo&t=744s - Basics of dynamic
    // memory https://www.youtube.com/watch?v=pTXvkLlAm38 - How to use Malloc in
    // C
    if (q == NULL) {
        free(q);
        return 0;
        // code to handle null value
    } else {
        q->head = NULL;
        // This pointer is there to hold value in the last so that a new element
        // can be added at the tail!
        q->back = NULL; // int
        // As we need the length in O(1) and if we traverse the list and update
        // length, it will take O(n), idea for O(1) is to update the lenght on
        // addition and deletion of list element
        q->len = 0;
        return q;
    }
}

/**
 * @brief Frees all memory used by a queue
 * @param[in] q The queue to free
 */
void queue_free(queue_t *q) {
    /* How about freeing the list elements and the strings? */
    /* Free queue structure */
    if (q == NULL) {
        return;
    } else {
        list_ele_t
            *newh; // pointers to the struct to iterate and free one by one
        list_ele_t *newh2;
        // check weather the queue is not intialised yet
        newh = q->head; // to traverse first initialise our list item to the
                        // address of the current queue start
        while (newh != NULL) {
            // loop to first remove the element at head
            newh2 = newh->next;
            // store the next value(second node address)so that our list is not
            // lost while we delete the first node
            free(newh->value); // free the string value also
            free(newh);        // free the struct pointer
            // save the next node's address in current node and continue the
            // process
            newh = newh2;
        }
    }
    // Freed by iterating over-this is to free the entire queue as well
    free(q);
}

/**
 * @brief Attempts to insert an element at head of a queue
 *
 * This function explicitly allocates space to create a copy of `s`.
 * The inserted element points to a copy of `s`, instead of `s` itself.
 *
 * @param[in] q The queue to insert into
 * @param[in] s String to be copied and inserted into the queue
 *
 * @return true if insertion was successful
 * @return false if q is NULL, or memory allocation failed
 */
bool queue_insert_head(queue_t *q, const char *s) {
    // https://www.youtube.com/watch?v=o1QaGUEi6ew&list=PLVlQHNRLflP_OxF1QJoGBwH_TnZszHR_j&index=7
    // - basic operations on list
    /* What should you do if the q is NULL? */
    // return false;??

    if (q == NULL) {
        return false;
    } else {
        list_ele_t *newh;
        newh = malloc(sizeof(list_ele_t));
        if (newh == NULL) {
            // free if wrong malloc initialisation as mentioned above
            free(newh);
            return false;
        }
        /* What if either call to malloc returns NULL? */
        // if( newh==NULL||newh->value==NULL){
        //     //remove all the contents from both
        //     free(newh);
        //     free(newh->value);
        //     return false;
        // }
        else {
            /* Don't forget to allocate space for the string and copy it */
            newh->value = malloc(strlen(s) + 1); //+1 for the 0(null) character
            // set the newly created struct next pointer to null, we will update
            // this later
            newh->next = NULL;
            // Malloc issue check
            if (newh->value == NULL) {
                free(newh->value);
                free(newh);
                return false;
            } else {
                // if this is the first element, then assign the address to back
                // also, this will help in tail insertion
                if (q->back == NULL) {
                    q->back = newh; // check if first element and then assign
                                    // the first block address to back pointer
                    // Update length as we add element
                    q->len = 1;
                } else {
                    // Length update
                    q->len++;
                }
                // Allgood, copy the string into our value field
                strcpy(newh->value, s);
                // assign the address of the previous node which is stored in
                // head to the next
                newh->next = q->head;
                q->head = newh; // store current node address to the begining
                return true;
            }
        }
    }
}

/**
 * @brief Attempts to insert an element at tail of a queue
 *
 * This function explicitly allocates space to create a copy of `s`.
 * The inserted element points to a copy of `s`, instead of `s` itself.
 *
 * @param[in] q The queue to insert into
 * @param[in] s String to be copied and inserted into the queue
 *
 * @return true if insertion was successful
 * @return false if q is NULL, or memory allocation failed
 */
bool queue_insert_tail(queue_t *q, const char *s) {
    /* You need to write the complete code for this function */
    /* Remember: It should operate in O(1) time */
    // check null queue
    if (q == NULL) {
        return false;
    } else {
        list_ele_t *newh;
        newh = malloc(sizeof(list_ele_t));
        if (newh == NULL) { // check malloc failure
            free(newh);
            return false;
        } else {
            newh->value = malloc(strlen(s) + 1);
            newh->next = NULL;
            if (newh->value == NULL) {
                // remove all the contents from both
                free(newh->value);
                free(newh);
                return false;
            } else {
                // All good, no malloc issue, now copy
                strcpy(newh->value, s);
                // first element check and update both pointers
                if (q->back == NULL) {
                    q->head = newh;
                    q->back = newh;
                    q->len++;
                } else {
                    // elements in list, so update the last block, i.e back
                    q->back->next = newh;
                    q->back = newh;
                    q->len++;
                }
                return true;
            }
        }
    }
}

/**
 * @brief Attempts to remove an element from head of a queue
 *
 * If removal succeeds, this function frees all memory used by the
 * removed list element and its string value before returning.
 *
 * If removal succeeds and `buf` is non-NULL, this function copies up to
 * `bufsize - 1` characters from the removed string into `buf`, and writes
 * a null terminator '\0' after the copied string.
 *
 * @param[in]  q       The queue to remove from
 * @param[out] buf     Output buffer to write a string value into
 * @param[in]  bufsize Size of the buffer `buf` points to
 *
 * @return true if removal succeeded
 * @return false if q is NULL or empty
 */
bool queue_remove_head(queue_t *q, char *buf, size_t bufsize) {
    /* You need to fix up this code. */
    // First check if the queue is bad address or if the address is correct but
    // queue empty
    if (q == NULL || q->head == NULL) {
        // q->head to check if the queue is empty
        return false;
    }
    list_ele_t *newh;
    // assigning a new struct element so that we can perform deletion using it
    newh = q->head;
    // storing the next in the list item from head as we will be removing
    // element from head but appending the new head to next value 2->1, 1 delete
    q->head = q->head->next;
    if (q->head == NULL) {
        // this will check if there are no elements after the deletion will
        // happen
        q->back = NULL; // update the back pointer to null too. queue empty
    }
    // overwriting the value field with \0, null characters
    if (buf != NULL) {
        size_t len = strlen(newh->value);
        if (len >= bufsize) {
            len = bufsize - 1; // we already have 1 null character at the end,
                               // so to omit that
        }
        strncpy(buf, newh->value, len);
        // copy the null characters into the value field
        buf[len] = '\0';
    }
    free(newh->value);
    // releasing both
    free(newh);
    // reducing the lenght
    q->len--;
    return true;
}

/**
 * @brief Returns the number of elements in a queue
 *
 * This function runs in O(1) time.
 *
 * @param[in] q The queue to examine
 *
 * @return the number of elements in the queue, or
 *         0 if q is NULL or empty
 */
size_t queue_size(queue_t *q) {
    /* You need to write the code for this function */
    /* Remember: It should operate in O(1) time */
    // https://www.youtube.com/watch?v=ZhC1soR0zno&list=PLVlQHNRLflP_OxF1QJoGBwH_TnZszHR_j&index=8
    // - covers basic of length but this is O(n) fetch the struct variable and
    // display
    if (q == NULL) {
        return 0;
    } else {
        return (q->len);
    }
}

/**
 * @brief Reverse the elements in a queue
 *
 * This function does not allocate or free any list elements, i.e. it does
 * not call malloc or free, including inside helper functions. Instead, it
 * rearranges the existing elements of the queue.
 *
 * @param[in] q The queue to reverse
 */
void queue_reverse(queue_t *q) {
    /* You need to write the code for this function */
    // Preliminary  queue check
    if (q == NULL) {
        return;
    } else {
        // initialising temp structures
        list_ele_t *newh1;
        list_ele_t *newh2;
        list_ele_t *newh3;
        list_ele_t *newh4;
        newh1 = NULL; // does 2 jobs, initialising first elements next address
                      // to null and swap
        newh2 = q->head;
        // checing if queue is initialised but does not have any element
        if (q->head == NULL) {
            return;
        }
        // swapping the nodes that are there from the head
        //
        while (newh2 != NULL) {
            newh3 = newh2->next;
            // store next block address in a pointer to swap next
            newh2->next = newh1; // store current block address
            newh1 = newh2;
            // move to next blocks
            newh2 = newh3;
        }
        // typecasting issue
        //  q->head=(long*)((unsigned)q->head+(unsigned)q->back);
        //  q->back=(long*)((unsigned)q->head-(unsigned)q->back);
        //  q->head=q->head-q->back;
        // using the method of temp to swap the addresses
        newh4 = q->head;
        // swapping first and last address->head and back in the struct
        q->head = q->back;
        q->back = newh4;
    }
}
