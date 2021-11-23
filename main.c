
#include "variable.h"
#include "sentence.h"
#define DATAQP(X) &(DATA){.byte64 = X}
#include <limits.h>
#include <assert.h>

int main()
{
    var_init(10);
    
    VAR* var = var_create("var", 0);
    var_createchild(var, 10);
    VAR* child = var_read(var, "-child").var;
    if (!child)
    {
        printf("child not found");
    }
    
    //VAR* stack = var_createstack("stack", 4);
    //assert(stack);
    
    //printf("%p", stack->prop[0].data);
    printf("done");
    return 0;
}