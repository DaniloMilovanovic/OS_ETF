//
// Created by os on 5/9/24.
//

#include "../h/memoryAllocator.hpp"

memoryAllocator::blockHeader* memoryAllocator::freeMemHead = nullptr; //beginning of free memory list

void *memoryAllocator::mem_alloc(size_t size) {

    if(freeMemHead == nullptr){//allocation of the required block and initialisation of the rest of the space as a free mem block

        if((uint64)HEAP_START_ADDR + size * MEM_BLOCK_SIZE >= (uint64)HEAP_END_ADDR) return nullptr;// not enough space for the block in memory

        blockHeader* allocatedBlock = (blockHeader*)HEAP_START_ADDR;
        allocatedBlock->next = nullptr;
        allocatedBlock->size = size;

        freeMemHead = (blockHeader*)((uint64)HEAP_START_ADDR + size * MEM_BLOCK_SIZE);
        freeMemHead->next = nullptr;
        freeMemHead->size = (size_t)(((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR - size * MEM_BLOCK_SIZE) / MEM_BLOCK_SIZE);

        return (void*)((uint64)allocatedBlock + sizeof(void*) + sizeof(size_t));
    }

    blockHeader* block = freeMemHead;//we search for the first free block - first fit
    blockHeader* prev = nullptr;
    for(;block != nullptr; prev = block, block = block->next){
        if(block->size >= size) break;
    }

    if(block == nullptr)return nullptr;//no free mem space left;

    //allocate the requested block
    size_t remainingSize = block->size - size;
    if(remainingSize >= 1){//a fragment exists in the block that we want to allocate
        block->size = size;
        blockHeader* newBlock = (blockHeader*)((uint64)block + size * MEM_BLOCK_SIZE);

        if(prev)prev->next = newBlock;
        else freeMemHead = newBlock;

        newBlock->next = block->next;
        newBlock->size = remainingSize;

    }
    else{//no remaining fragment in the block we want to allocate
        if(prev) prev->next = block->next;
        else freeMemHead = block->next;
    }

    block->next = nullptr; // the block is allocated, so it doesn't point to the next free segment

    return (void*)((uint64)block + sizeof(void*) + sizeof(size_t));
}

int memoryAllocator::mem_free(void * addr) {
    addr = (void*)((uint64)addr - sizeof(size_t) - sizeof(void*));//we change the address so it points to the beginning of the blockHeader

    if(addr < HEAP_START_ADDR || addr > (void*)((uint64)HEAP_END_ADDR - 64)) return -1; // these addresses couldn't have been allocated
    blockHeader* bhAddr = (blockHeader*)addr;
    blockHeader* curr = nullptr;

    if(freeMemHead && addr >= (void*)freeMemHead){//we search for the space where the new free segment would fit in the free mem list
        for(curr = freeMemHead; curr->next != nullptr && addr >= (void*) curr->next; curr = curr->next);
    }

    if(curr == bhAddr || (curr && (blockHeader*)((uint64)curr + curr->size * MEM_BLOCK_SIZE) > bhAddr) ) return -2; // the block is already in the free memory list

    //we add the new segment after curr free segment
    blockHeader* newBlock = (blockHeader*)addr;
    if(curr) {
        newBlock->next = curr->next;
        curr->next = newBlock;
        }
    else {
        newBlock->next = freeMemHead;
        freeMemHead = newBlock;
    }
    //we check if we can merge previous or next segment with the added free segment
    tryToJoin(newBlock);
    tryToJoin(curr);

    return 0;

}

int memoryAllocator::tryToJoin(blockHeader* curr){ //join two blocks that are next to each other
    if(!curr) return 0;
    if(curr->next && (uint64)curr + curr->size * MEM_BLOCK_SIZE == (uint64)curr->next){
        //remove the curr->next block
        curr->size += curr->next->size;
        curr->next = curr->next->next;
        return 1;
    }
    else return 0;
}
