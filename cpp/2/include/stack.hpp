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
        data = (T*)realloc(data, sizeof(T) * (size-1));
        T temp = data[size-1];
        size--;
        return temp;
    }

    void push(T input)
    {
        data = (T*)realloc(data, sizeof(T) * (size+1));
        data[size] = input;
        size++;
    }
    
    T operator[](int index)
    {
        //if (index+1 > size)
        //{
        //    return T{};
        //}
        
        return data[index];
    }

    void erase()
    {
        free(data);
        size = 0;
    }

};
