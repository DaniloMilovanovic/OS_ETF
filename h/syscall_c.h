//
// Created by os on 5/8/24.
//

#ifndef OSPROJECT_SYSCALL_C_H
#define OSPROJECT_SYSCALL_C_H

#include "../lib/hw.h"

class _thread;
typedef _thread* thread_t;

class _sem;
typedef _sem* sem_t;

extern const size_t DEFAULT_STACK_SIZE;
extern const time_t DEFAULT_TIME_SLICE;

extern const void* HEAP_START_ADDR;
extern const void* HEAP_END_ADDR;
extern const size_t MEM_BLOCK_SIZE;

void* mem_alloc (size_t size);

int mem_free (void*);

int thread_create (

        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);

int thread_exit ();

void thread_dispatch ();

int sem_open (
        sem_t* handle,
        unsigned init
);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

int sem_trywait(sem_t id);

int sem_timedwait(
        sem_t id,
        time_t timeout
);

int time_sleep (time_t);

const int EOF = -1;

char getc ();

void putc (char);

#endif //OSPROJECT_SYSCALL_C_H
