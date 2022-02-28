#include "stack.hpp"

template <typename T>
class stack 
{
public:
    int size = 0;
    T* data = nullptr;

    T pop()
    {
        T temp = data[size-1];
        data = realloc(data, (size-1) * sizeof(T));
        return temp;
    }

    void push(T input)
    {
        data = realloc(data, (size+1) * sizeof(T));
        data[size] = input;
    }
    
};

