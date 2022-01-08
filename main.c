
#include "variable.h"
#include "sentence.h"
#define DATAQP(X) &(DATA){.byte64 = X}
#include <limits.h>
#include <assert.h>

int main()
{
    var_init(10);
    
    //VAR* var = var_stackcreate("var", 10);
    //var_child(var, 10);
    //VAR* child = var_childcreate(var, "new child");
    //printf("%u ", var->prop[3].data.var->flags);
    
    //VAR* stack = var_createstack("stack", 4);
    //assert(stack);
    
    //printf("%p", stack->prop[0].data);
    char buffer[100];
    //printf("%u done", var_findprop(var, "-child")->length);
    //scanf("%s", buffer);
    var_quit();
    //scanf("%s", buffer);
    return 0;
}