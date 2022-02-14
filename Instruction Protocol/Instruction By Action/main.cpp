#include "iba.hpp"

int main()
{
    char buffer[100] = 
    "var hello\n"
    "var name = \"lol\"\n";
    //printf(buffer);
    compile(buffer, 0);
}