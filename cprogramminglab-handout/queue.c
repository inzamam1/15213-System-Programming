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
    if(q==NULL){
        free(q);
        return 0;
        //code to handle null value
    }
    else{
        q->head = NULL;
        q->back = NULL;
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
    list_ele_t *newh;//pointers to the struct to iterate and free one by one
    list_ele_t *newh2;
    //check weather the queue is not intialised yet
    if (q==NULL){
        return;
    }
    else{
        newh=q->head;
        while(newh!=NULL){
            newh2=newh->next;
            free(newh->value);
            free(newh);
            newh=newh2;
    }
    }
    //Freed by iterating over
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
    list_ele_t *newh;
    /* What should you do if the q is NULL? */
    
    //return false;??
    if (q==NULL){
        return false; 
    }
    else{
        newh = malloc(sizeof(list_ele_t));
        if(newh==NULL){
            //remove all the contents from both
            free(newh);
            return false;
        }
        /* What if either call to malloc returns NULL? */
        // if( newh==NULL){
        //     //remove all the contents from both
        //     free(newh);
        //     return false;
        // }
        else {
            /* Don't forget to allocate space for the string and copy it */
            newh->value=malloc(strlen(s)+1);//+1 for the null character
            newh->next=NULL;
            if(newh->value==NULL){
                free(newh->value);
                free(newh);
                return false;
            }
            else{
                //if this is the first element, then assign the address to back also
                if(q->back==NULL){
                    q->back=newh;
                    q->len=1;
                }
                else{
                    q->len++;
                }      
                strcpy(newh->value,s);
                newh->next = q->head;
                q->head = newh;
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
    list_ele_t *newh;
    if(q==NULL){
        return false;
    }
    else{
        newh = malloc(sizeof(list_ele_t));
        if(newh==NULL){
            free(newh);
            return false;
        }
        else{
            newh->value=malloc(strlen(s)+1);
            newh->next=NULL;
            if(newh->value==NULL){
                //remove all the contents from both
                free(newh->value);
                free(newh);
                return false;
            }
            else{
                strcpy(newh->value,s);
                if (q->back==NULL){
                    q->head=q->back=newh;
                    q->len++;
                }
                else{
                    q->back->next=newh;
                    q->back=newh;
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
    list_ele_t *newh;
    if (q==NULL||q->head==NULL){
        return false;
    }
    newh=q->head;
    q->head = q->head->next;
    if (q->head==NULL){
        q->back=NULL;
    }
    if(buf!=NULL){
        size_t len = strlen(newh->value);
        if(len>=bufsize){
            len=bufsize-1;
        }
        strncpy(buf,newh->value, len);
        buf[len]='\0';
    }
    free(newh->value);
    free(newh);
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
    if (q==NULL){
        return 0;
    }
    else{
        return(q->len);
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
    if (q==NULL){
        return;
    }
    else{
        list_ele_t *newh1;
        list_ele_t *newh2;
        list_ele_t *newh3;
        list_ele_t *newh4;
        newh1=NULL;
        newh2=q->head;
        if(q==NULL ||q->head==NULL){
            return;
        }
        while(newh2!=NULL){
            newh3=newh2->next;
            newh2->next=newh1;
            newh1=newh2;
            newh2=newh3;
        }
        newh4=q->head;
        q->head=q->back;
        q->back=newh4;
    }
}
