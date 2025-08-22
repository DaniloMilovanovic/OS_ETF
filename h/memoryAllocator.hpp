//
// Created by os on 5/8/24.
//

#ifndef OSPROJECT_MEMORYALLOCATOR_HPP
#define OSPROJECT_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class memoryAllocator{

public:

    static void* mem_alloc (size_t size);

    static int mem_free (void*);

private:
    struct blockHeader{
        blockHeader* next;
        size_t size;
    };
    static int tryToJoin(blockHeader* curr);
    static blockHeader* freeMemHead; //storing free blocks in virtual address space
};



#endif //OSPROJECT_MEMORYALLOCATOR_HPP
