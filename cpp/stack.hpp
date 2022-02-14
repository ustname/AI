#include "data.hpp"

template <typename T>
class stack 
{
private:
    T* data = nullptr;

public:
    int size = 0;

    T pop()
    {
        T temp = data[size-1];
        data = (T*)realloc(data, (size-1) * sizeof(T));
        size--;
        return temp;
    }

    void push(T input)
    {
        data = (T*)realloc(data, (size+1) * sizeof(T));
        data[size] = input;
        size++;
    }
    
    T operator[](int index)
    {
        if (index+1 > size)
        {
            return 0;
        }
        
        return &data[index];
    }

    void erase()
    {
        free(data);
        size = 0;
    }

};