#include <stdlib.h>
#include <memory.h>

void* realloc2(void* src, size_t newlength, size_t oldlength)
{
    void* mem = malloc(newlength);
    memcpy(mem, src, oldlength);
    free(src);
    return mem;
}