#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "realloc2.h"



void* getmem()
{
    return malloc(20);
}

void freethis(void* mem)
{
    free(mem);
}

int main()
{
    
    //printf("%s, %s, %s", ptr[0], ptr[1], ptr[2])
}