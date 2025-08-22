//
// Created by os on 5/8/24.
//

#include "../h/syscall_c.h"

void *mem_alloc(size_t size) {

    uint64 volatile code = 0x01;

    if(size < 0) return nullptr;

    uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
    if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;


    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (num_of_blocks));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return (void*)ret;
}

int mem_free(void* addr) {

    uint64 volatile code = 0x02;
    uint64 volatile volatile_addr = (uint64)addr;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_addr));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    void* volatile stack_space = mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));

    uint64 volatile code = 0x11;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (handle));
    __asm__ volatile("mv a2, %0" :  : "r" (start_routine));
    __asm__ volatile("mv a3, %0" :  : "r" (arg));
    __asm__ volatile("mv a4, %0" :  : "r" ((uint64)stack_space));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

int thread_exit (){
    uint64 volatile code = 0x12;
    __asm__ volatile("mv a0, %0" :  : "r" (code));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

void thread_dispatch (){

    uint64 volatile code = 0x13;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");
}



int sem_open (sem_t* handle, unsigned init){

    uint64 volatile volatile_handle = (uint64)handle;
    uint64 volatile volatile_init = init;
    uint64 volatile code = 0x21;

    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_handle));
    __asm__ volatile("mv a2, %0" :  : "r" (volatile_init));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_close (sem_t handle){

    uint64 volatile code = 0x22;
    uint64 volatile volatile_handle = (uint64)handle;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_handle));

    __asm__ volatile("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_wait (sem_t id){

    uint64 volatile code = 0x23;
    uint64 volatile volatile_id = (uint64)id;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_id));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_signal (sem_t id){
    uint64 volatile code = 0x24;
    uint64 volatile volatile_id = (uint64)id;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_id));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_trywait(sem_t id){

    uint64 volatile code = 0x26;
    uint64 volatile volatile_id = (uint64)id;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (volatile_id));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_timedwait(sem_t id, time_t timeout){
    return 0;
}


int time_sleep (time_t){
    return 0;
}

char getc (){
    uint64 volatile code = 0x41;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (char)ret;

}

void putc (char ch){
    char volatile c = ch;
    uint64 volatile code = 0x42;
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("mv a1, %0" :  : "r" (c));
    __asm__ volatile("ecall");
}