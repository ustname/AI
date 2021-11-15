
#include "variable.h"
#include "sentence.h"
#define DATAP(X) &(V_DATA){.byte64 = X}
#include <limits.h>
#include <assert.h>

int main()
{
    var_init(10);
    
    VAR* stack = var_createstack("stack", 4);
    //assert(stack);
    if (!stack)
    {
        printf("erro exit var create");
        exit(8);
    }
    
    
    var_create("lmao", var_find("stack", 0));
    var_delete(stack);
    //printf("%p", stack->prop[0].data);
    printf("done");
    return 0;
}