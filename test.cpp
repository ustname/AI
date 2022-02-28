#include <iostream>

int function()
{
    static int number = 1;
    return ~number;
}

int main()
{
    std::cout << function();
}