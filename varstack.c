#include "datahandle.h"
#include "variable.h"

void var_setvar0(VAR* varv, uint64_t count);

VAR* var_createstack(char* stackname, int64_t stacknum)
{
    if (stackname == 0 || stacknum == 0)
    {
        return 0;
    }
    
    VAR* stack = var_create(stackname, 0);
    DATA data;

    //PROP* prop = prop_create()
    PROP* prop = prop_create(0);
    prop->name = strdup("var_num");
    prop->data.byte64 = stacknum;
    prop->type = UI64;
    prop->length = 0;
    int res = var_writeprop(stack, prop);
    
    
    //*prop = (PROP){"var_num", 67, .data.byte64 = 0, 0, 0};

    //prop_edit(prop, PROP_EDIT_CLEAN, NULL);
    //prop = &stack->prop[1];
    prop->name = strdup("value");
    prop->data.var = malloc(sizeof(VAR) * stacknum);
    prop->type = TYPE_VAR;
    prop->length = sizeof(VAR) * stacknum;
    var_setvar0(prop->data.var, stacknum);
    res = var_writeprop(stack, prop);
    if (res)
    {
        printf("write prop error");
        exit(9);
    }
    //prop_edit(prop, PROP_EDIT_CLEAN, NULL);
    //prop = &stack->prop[2];
    prop->name = strdup("type");
    prop->data.cp = strdup("child");
    prop->type = CP;
    prop->length = strlen(prop->data.cp);//printf("stack error");
    var_writeprop(stack, prop); 
//printf("       no error");
    return stack;
}

VAR* var_createchild(VAR* parent, int64_t stacknum)
{
    if (!stacknum || !parent)
    {
        return 0;
    }
    
    DATA var;
    var.var = var_alloc(stacknum);
    memset(var.vp, 0, sizeof(VAR) * stacknum);

    var_write(parent, "-child", sizeof(VAR) * stacknum, &var, TYPE_VAR);
    
    
    return var.var;
}

/*
VAR* var_createstack2(char* stackname, uint64_t stacknum)
{
    if (stackname == 0 || stacknum == 0)
    {
        return 0;
    }
    
    VAR* stack = malloc(sizeof(VAR));
    stack->prop = malloc(sizeof(PROP)*3);
    stack->prop_num = 1;
    stack->flags = 1;
    V_DATA data;

    //PROP* prop = prop_create()
    PROP* prop = &stack->prop[0];
    prop->name = strdup("var_num");
    prop->data.byte64 = stacknum;
    prop->type = UI64;
    prop->length = 0;
    //var_write(stack, prop);

    //prop_edit(prop, PROP_EDIT_CLEAN, NULL);
    prop = &stack->prop[1];
    prop->name = strdup("data");
    prop->data.var = malloc(sizeof(VAR) * stacknum);
    prop->type = VP;
    prop->length = sizeof(VAR) * stacknum;
    var_setvar0(prop->data.var, stacknum);
    //var_write(stack, prop);
    
    //prop_edit(prop, PROP_EDIT_CLEAN, NULL);
    prop = &stack->prop[2];
    prop->name = strdup("type");
    prop->data.cp = strdup("var_stack");
    prop->type = CP;
    prop->length = strlen(prop->data.cp);//printf("stack error");
    //var_write(stack, prop); 
//printf("       no error");
    return stack;
}


int var_cleanstack()
{
    
}
*/

void var_setvar0(VAR* varv, uint64_t count)
{
    uint64_t i;
    //int64_t location;
    //uint64_t limit;
    //location = var_findprop(varv, "var_num");
    //limit = varv->prop[location].data.byte64;
    //location = var_findprop(varv, "data");

    for( i = 0; i < count; i++ )
    {//printf("empty");
        varv[i].flags = 0;
        varv[i].name = 0;
    }
}