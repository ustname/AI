#include <iostream>
#include <string.h>

int main()
{
    char buffer[4] = {'n', 'a', 'm', 'e'};
    char* name = strdup(buffer);
    std::cout << name;
}