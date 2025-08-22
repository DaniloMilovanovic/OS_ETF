//
// Created by os on 5/8/24.
//

#ifndef OSPROJECT_LIST_HPP
#define OSPROJECT_LIST_HPP

#include "memoryAllocator.hpp"
template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        void* operator new(size_t size){
            uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
            if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;

            return memoryAllocator::mem_alloc(num_of_blocks);
        }

        void operator delete(void* p){
            memoryAllocator::mem_free(p);
        }
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    void* operator new(size_t size){
        uint64 volatile num_of_blocks = (size + sizeof(uint64) + sizeof(void*)) / MEM_BLOCK_SIZE;
        if(size + sizeof(void*) + sizeof(uint64) % MEM_BLOCK_SIZE) num_of_blocks++;

        return memoryAllocator::mem_alloc(num_of_blocks);
    }

    void operator delete(void* p){
        memoryAllocator::mem_free(p);
    }


    void addFirst(T *data)
    {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif //OSPROJECT_LIST_HPP
