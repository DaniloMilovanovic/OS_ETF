//
// Created by os on 5/16/24.
//

#ifndef OSPROJECT_USERSEMAPHORE_HPP
#define OSPROJECT_USERSEMAPHORE_HPP

#include "list.hpp"
#include "ccb.hpp"

class userSemaphore {
public:
    static userSemaphore* createSemaphore(int val = 1);

    int wait ();

    int signal ();

    int tryWait();

    void* operator new(size_t size){
        uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
        if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;

        return memoryAllocator::mem_alloc(num_of_blocks);
    }

    void operator delete(void* p){
        memoryAllocator::mem_free(p);
    }
    ~userSemaphore();

protected:

    void block ();

    void unblock ();

private:
    userSemaphore (unsigned short init=1) : val(init) {}

    int val;
    List<CCB> blocked;
};

#endif //OSPROJECT_USERSEMAPHORE_HPP
