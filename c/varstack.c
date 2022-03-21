#include "datahandle.h"
#include "variable.h"

extern VAR* var_current;
extern int64_t var_findempty(VAR*, int);

void var_setvar0(VAR* varv, uint64_t count);

VAR* var_stackcreate(char* stackname, int64_t stacknum)
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
    prop->flags = PROP_FLAG_USED;
    int res = var_writeprop(stack, prop);
    
    
    //*prop = (PROP){"var_num", 67, .data.byte64 = 0, 0, 0};

    //prop_edit(prop, PROP_EDIT_CLEAN, NULL);
    //prop = &stack->prop[1];
    prop->name = strdup("value");
    prop->data.var = malloc(sizeof(VAR) * stacknum);
    prop->type = TYPE_VAR;
    prop->length = sizeof(VAR) * stacknum;
    prop->flags = PROP_FLAG_USED;
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
    prop->type = CHARP;
    prop->length = strlen(prop->data.cp);
    prop->flags = PROP_FLAG_USED;//printf("stack error");
    var_writeprop(stack, prop); 
//printf("       no error");
    return stack;
}

int var_stackupgrade(VAR* var_stack, int64_t stacknum)
{
    if (var_stack == 0)
    {
        var_stack = var_current;
    }

    PROP* type = var_findprop(var_stack, "type");
    if (!type)
    {
        return -1;
    }
    if (type->type == CHAR)
    {
        if(strncmp(type->data.cp, "child", 6))
        {
            return -2;
        }
    }

    PROP* var_num = var_findprop(var_stack, "var_num");
    int64_t num = var_num->data.byte64;
    VAR* var = var_findprop(var_stack, "value")->data.var;
    if (!var)
    {
        return -1;
    }
    VAR* newvar = var_alloc(num + stacknum);
    memcpy(newvar, var, sizeof(VAR)*(num));
    //var = realloc(var, sizeof(VAR)*(num));
    var_write(var_stack, "value", sizeof(VAR)*(num + stacknum), DATAPQ(newvar), TYPE_VAR);//printf("ERROR %u", num); exit(8);
    var_num->data.byte64 += stacknum;
    free(newvar);
    
    
    return 0;
}

VAR* var_child(VAR* parent, int64_t stacknum)
{
    if (!stacknum || !parent)
    {
        return 0;
    }
    
    DATA var;
    var.var = var_alloc(stacknum);
    //memset(var.vp, 0, sizeof(VAR) * stacknum);

    var_write(parent, "-child", sizeof(VAR) * stacknum, &var, TYPE_VAR);
    
    
    return var.var;
}

VAR* var_childfind(char* name, VAR* parent)
{
    if (!name || !parent)
    {
        return 0;
    }
    int64_t len = strlen(name);

    PROP* prop = var_findprop(parent, "-child");
    VAR* var = prop->data.var;
    int64_t limit = prop->length/sizeof(VAR);

    for (int i = 0; i < limit; i++)
    {
        if (var[i].flags == VARENUM_NULL) continue;
        if (!strncmp(var[i].name, name, len))
        {
            return &var[i];
        }
    }
    
    return 0;
}

VAR* var_childcreate(VAR* parent, char* name)
{
    if (!parent)
    {
        parent = var_current;
    }
    PROP* prop = var_findprop(parent, "-child");
    VAR* var = prop->data.var;
    if (!var)
    {
        return 0;
    }
    
    if (var_childfind(name, var))
    {
        return 0;
    }printf("ernjif"); exit(9);

    int64_t index = var_findempty(var, prop->length/sizeof(VAR));
    var = &var[index];
    var->name = strdup(name);
    var->flags = VARENUM_USED;
    var->version = 0;
    var->prop = 0;
    var->prop_num = 0;
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