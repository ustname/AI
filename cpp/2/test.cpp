#include <iostream>
#include <string.h>

int main()
{
    char buffer[100] = "-1.23f";
    std::cout << atof(buffer);
}