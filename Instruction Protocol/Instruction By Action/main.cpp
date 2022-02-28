#include "iba.hpp"

int main()
{
    char buffer[100] = 
    "int hello = 10\n"
    "string name\n";
    //printf(buffer);
    compile(buffer, 0);
}