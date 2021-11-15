#include "variable.h"

VAR* VAR_vault;
uint64_t vaultdata;
uint64_t vaultnum;
//VAR_VAULT *VAR_vault;

VAR* var_current = 0;
VAR_VAULT* var_currentstack = 0;

uint64_t var_stackcount = 0;

void var_makestack(uint32_t count);
PROP* var_findprop(VAR* var, char* prop_name);

void* realloc2(void** src, size_t newlength, size_t oldlength)
{
    void* mem = malloc(newlength);
    memcpy(mem, *src, oldlength);
    free(*src);printf("lol");
    return mem;
}

/*
VAR* var_find2(char* name)
{
    if(name == 0)
    {
        return 0;
    }
    VAR* var;
    VAR_VAULT* varp = VAR_vault;
    
    
    int var_count = varp->var_num;

    
    do{
        for (int i = 0; i < var_count; i++)
        {
            if(varp->varp[i].flags == 0) continue;

            if(strcmp(varp->varp[i].var_name, name) == 0)
            {
                var_current = &varp->varp[i];
                return &varp->varp[i];
            }
        }
    }while ((varp = varp->next) != 0);
    


    return 0;
}*/


VAR* var_find(char* name, VAR* var_stack)
{
    if(name == 0)
    {
        return 0;
    }
    //else 
    
    //printf("%p ", var_findprop(var_stack, "type")); exit(0);

    uint64_t limit;
    int64_t location;
    int result;
    VAR* var;
    VAR* varv;
    if(var_stack == 0)
    {
        varv = VAR_vault;
        //limit = varv->prop[vaultnum].data.byte64;
        //location = vaultdata;
    }else
    {
        varv = var_stack;
        //result = location = var_findprop(varv, "var_num");printf("find error %i", result);
        //limit = varv->prop[0].data.byte64;
        //location = 1;
        //result = location = //varv->prop[location].data.var;
    }
    if ( strncmp( var_findprop(varv, "type")->data.cp, "var_stack", 9 ) )
    {//printf("var find %s %i", varv->name, varv->flags); exit(7);
        return 0;
    }
    limit = var_findprop(varv, "var_num")->data.byte64;
    VAR* varp = var_findprop(varv, "value")->data.var;
    
    for (uint64_t i = 0; i < limit; i++)
    {//printf("%i, ", varp[i].flags);
        if(varp[i].flags == 0) continue;
        //printf("%s %s\n", varp[i].name, name);
        if(strcmp(varp[i].name, name) == 0)
        {
            var_current = &varp[i];
            return &varp[i];
        }
    }
    
    return 0;
}


int64_t var_findempty(VAR* var, int limit)
{//printf("limit = %i", limit);
    for (int i = 0; i < limit; i++)
    {//printf("%i ", var->flags);
        if (var->flags == 0)
        {
            return i;
        }
    }

    return -1;
}

VAR* var_create(char* name, VAR* var_stack)
{
    if(var_find(name, var_stack))
    {//
        return 0;
    }

    PROP* location;
    uint64_t index;
    uint64_t limit;
    //VAR* varv = var_stack;

    if(var_stack == 0)
    {
        var_stack = VAR_vault;
        location = var_findprop(var_stack, "value");
        limit = var_findprop(var_stack, "var_num")->data.byte64;
        index = var_findempty(var_stack->prop[vaultdata].data.var, limit);
    }else
    {
        //location = var_findprop(varv, "data");location = 1;
        //index = var_findprop(varv, "var_num");index = 0;
        //limit = varv->prop[index].data.byte64;
        //index = var_findempty(varv->prop[location].data.var, limit);
        limit = var_findprop(var_stack, "var_num")->data.byte64;
        location = var_findprop(var_stack, "value");
        index = var_findempty(location->data.var, limit);//printf(" from stack");
    }
    //printf("limit is %i", limit);

    if (index == -1)
    {
        //errnum = ERR_STACKISFULL;
        printf(" error"); exit(9);
        return 0;
    }
    
    
    //printf("index = %i ", index);

    VAR* var = &location->data.var[index];//printf("no error%p", &varv->prop[location].data.var[index]-0);
    var->name = strdup(name);
    var->flags = VARENUM_USED;
    var->version = 0;
    var->prop = 0;
    var->prop_num = 0;

    var_stack->prop[0].data.byte64++;
//printf("exit", limit); exit(0);
    var_current = var;
    return var;
}

/// return the prop index, if not found return -1
PROP* var_findprop(VAR* var, char* prop_name)
{ //
    int prop_count = var->prop_num;
    if(prop_count == 0)
    {
        return 0;
    }
//printf("find prop %i", var->prop_num);
    //printf("%s %s", var->prop[i].name, prop_name);
    for (int i = 0; i < prop_count; i++)
    {//printf("from var %s , %s\n",var->prop[i].name, prop_name);//exit(0);
        if(strcmp(var->prop[i].name, prop_name) == 0)
        {//printf("rewrite %i with var prop %s and %s\n", i, var->prop[i].name, prop_name);
            return &var->prop[i];
        }
    }
    return 0;
}


int var_writeprop(VAR* var, PROP* prop)
{
    if(prop == NULL)
    {//printf("var write");
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }else if (var == 0)
    {
        var = var_current;
    }
    var_current = var;

    char* prop_name = prop->name;
    uint64_t length = prop->length;
    void* data = prop->data.vd;
    PROP* prop_dst = var_findprop(var, prop_name);
    //printf("prop %p\n", prop_dst);
    if(prop_dst == 0)
    {//
        PROP* Prop = 0;
        if (var->prop == 0)
        {
            var->prop = malloc(sizeof(struct PROP));
        }
        else
        {
            Prop = realloc(var->prop, (var->prop_num + 1) * sizeof(struct PROP));
            var->prop = Prop;
        }
        var->prop_num++;
        //var->prop = Prop;printf("%i ", var->prop_num);//exit(0);
        prop_dst = &var->prop[var->prop_num - 1]; //printf("prop_dst %p ", prop_dst); 
        
        //prop_index = ;
        //

        //var->prop[prop_index].name = strdup(prop_name);
        //var->prop[prop_index].length = 0;
    }

    
    //*prop_dst = *prop;
    prop_dst->name = strdup(prop->name);
    if (prop->length != 0)
    {
        prop_dst->data.vd = malloc(prop->length);
        memcpy(prop_dst->data.vd, prop->data.vd, prop->length);
        prop_dst->length = prop->length;
    }else
    {
        prop_dst->data = prop->data;
        prop_dst->length = 0;
    }
    prop_dst->type = prop->type;
    if (prop->code == PROP_CODE_CLEANAFTERWRITE)
    {
        prop_edit(prop, PROP_EDIT_CLEAN, 0);
        prop_dst->code = 0;
    }else
    {
        prop_dst->code = prop->code;
    }
    

    var->version++;
    return 0;
}


int var_write(VAR* var, char* prop_name, uint64_t length, V_DATA* data, int type)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }else if (var == 0)
    {
        var = var_current;
    }
    var_current = var;

    PROP* prop_dst = var_findprop(var, prop_name); 
    
    if(prop_dst == 0) ///   Write new prop
    {
        PROP* Prop = 0;
        if (var->prop == 0)
        {
            var->prop = malloc(sizeof(struct PROP));
        }
        else
        {
            Prop = realloc(var->prop, (var->prop_num + 1) * sizeof(struct PROP));
            var->prop = Prop;
        }
        var->prop_num++;
        //var->prop = Prop;printf("%i ", var->prop_num);//exit(0);
        prop_dst = &var->prop[var->prop_num - 1]; //printf("prop_dst %p ", prop_dst); 
        
        prop_dst->name = strdup(prop_name);
        prop_dst->length = 0;
        prop_dst->code = PROP_CODE_EMPTY;
        //prop_index = ;
        //

        //var->prop[prop_index].name = strdup(prop_name);
        //var->prop[prop_index].length = 0;
    }

    if (prop_dst->length != 0)
    {//printf("prop %p\n", prop_dst); exit(0);
        free(prop_dst->data.vd);
        prop_dst->length = 0;
    }
    
    if (length != 0)
    {
        prop_dst->data.vd = malloc(length);
        memcpy(prop_dst->data.vd, data, length);
        prop_dst->length = length;
    }else
    {//printf("var write"); exit(0);
        prop_dst->data = *data;
    }
    
    prop_dst->type |= type;
    
    

    
    //*prop_dst = *prop;
    var->version++;
    //printf("find prop %p", prop_dst); exit(0);
    //
    //var->prop[prop_index].data.vd = malloc(length);
    //memcpy(var->prop[prop_index].data.vd, data, length);
    //var->prop[prop_index].length = length;
    //var->prop[prop_index].type = 0;
    //strncpy(var->prop[prop_index].data->cp, data, length);
    
    return 0;
}

/*
int var_read(VAR* var, char* prop_name, void* data, int* length)
{
    if((prop_name == 0) || (data == 0) || (length == 0))
    {
        return -1;
    }else if (var == 0)
    {
        var = var_current;
    }
    

    int prop_index = var_findprop(var, prop_name);
    if(prop_index == -1)
    {
        return -1;
    }
    if(*length < var->prop[prop_index].length)
    {
        *length = var->prop[prop_index].length;
        return -2;
    }
    

    //void* readdata = var->prop[prop_index].data;
    memcpy(data, var->prop[prop_index].data.vd, var->prop[prop_index].length);
    *length = var->prop[prop_index].length;

    return 0;
}


int var_read2(VAR* var, char* prop_name, void* data, int* length, int* type)
{
    if((prop_name == 0) || (data == 0) || (length == 0) || (type == 0))
    {
        return -1;
    }else if (var == 0)
    {
        var = var_current;
    }
    

    int prop_index = var_findprop(var, prop_name);
    if(prop_index == -1)
    {
        return -1;
    }
    if(*length < var->prop[prop_index].length)
    {
        *length = var->prop[prop_index].length;
        return -2;
    }
    

    //void* readdata = var->prop[prop_index].data;
    memcpy(data, var->prop[prop_index].data.vd, var->prop[prop_index].length);
    *length = var->prop[prop_index].length;
    *type = var->prop[prop_index].type;

    return 0;
}
*/

void var_dump(VAR* var)
{
    if (var == 0)
    {
        printf("(NULL)");
        return;
    }
    
    printf("var name =\t %s", var->name);
    printf("var prop num =\t %lls", var->prop_num);
    
}

int var_cleanfromtype(PROP* prop);

int var_delete(VAR* var)
{
    //VAR* var;
    int prop_count;

    if(var == 0)
    {
        var = var_current;
    }
    //printf("%s %i", var->name, var->prop_num);
    prop_count = var->prop_num;
    for (int i = 0; i < prop_count; i++)
    {
        if(var->prop[i].length == 0)
            continue;
//printf(" before exit %s %i", var->prop[i].name, var->prop[i].length/4);
        var_cleanfromtype(&var->prop[i]);
        var->prop[i].length = 0;
    }
    free(var->prop); var->prop = 0;
    free(var->name); var->name = 0;
    
    var->prop_num = 0;
    var->flags = VARENUM_NULL;
    var->version = 0;

    return 0;
}

int var_cleanfromtype(PROP* prop)
{
    switch (prop->type)
    {
        case TYPE_VAR://printf(" call away");
        var_delete(prop->data.var); 
        break;

        case TYPE_SEN:
        SEN* sen = prop->data.sen;
        free(sen->src);
        free(sen->args);
        free(sen);
        break;
    
        default:
        free(prop->data.vd);
        break;
    }
}

/*
int var_delete2(VAR_VAULT* var_stack, char* name)
{
    VAR* var;
    int prop_count;

    if(name == 0)
    {
        var = var_current;
    }else
    {
        if(var_stack == 0)
        {
            var_stack = var_currentstack;
        }
        var = var_find(name, var_stack);
        if(var == 0)
        {
            return -1;
        }
    }
    
    prop_count = var->prop_num;
    for (int i = 0; i < prop_count; i++)
    {
        free(var->prop[i].data.vd);
    }
    free(var->prop);
    free(var->var_name);

    var->prop_num = 0;
    var->flags = VARENUM_NULL;

    return 0;
}
*/




void var_setvarnum0(VAR* varv, uint64_t count)
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
/*
VAR_VAULT* var_stack_create(uint64_t count)
{
    struct VAR_VAULT* temp = VAR_vault;
    int i = 1;
    for ( i = 1; i < var_stackcount; i++)
    {
        temp = temp->next;
        
    }
    
    //while ((*varps)->next != 0)  ///// 
    //{
    //    varps = &(*varps)->next;
    //    i++;
    //}
    
    temp->next = malloc(sizeof(struct VAR_VAULT));
    

    struct VAR_VAULT* vars = temp->next;
    vars->stackindex = i;
    vars->next = 0;
    vars->prev = temp;

    vars->varp = malloc(sizeof(VAR*) * count);
    vars->var_num = count;
    var_setvarnum0(vars, count);
    
}
*/
void var_init(uint64_t size)
{
    VAR* varv;
    VAR_vault = malloc(sizeof(VAR));
    VAR_vault->name = strdup("var_vault");
    VAR_vault->flags = VARENUM_USED;
    VAR_vault->prop_num = 3;
    vaultnum = 0;
    vaultdata = 1;
    
    VAR_vault->prop = malloc(sizeof(PROP) * 3);
    VAR_vault->prop[vaultnum].name = strdup("var_num");
    VAR_vault->prop[vaultnum].data.byte64 = size;
    VAR_vault->prop[2].name = strdup("type");
    VAR_vault->prop[2].data.cp = strdup("var_stack");
    VAR_vault->prop[vaultdata].name = strdup("value");
    VAR_vault->prop[vaultdata].data.var = malloc(sizeof(VAR) * size);//printf("%p", VAR_vault->prop[vaultdata].data.var);
    varv = VAR_vault->prop[vaultdata].data.var;
    var_setvarnum0(varv, size);
    

    
}


VAR* var_open(char* filename, VAR* vault)
{
    VAR* var;
    int version = 0;
    int var_name_length = 0;
    int prop_number = 0;
    char buffer[1000];
    FILE* f = fopen(filename, "rb");
    if(f == 0)
    {
        return 0;
    }

    
    fread(buffer, 1, 4, f);
    int result = strncmp(buffer, "var ", 4);
    if(result != 0)
    {
        return 0;
    }
    
    fread(&version, 4, 1, f);
    fread(&var_name_length, 4, 1, f);
    fread(buffer, 1, var_name_length, f);
    var = var_create(buffer, vault);
    fread(&prop_number, 4, 1, f);
    //var->prop_num = prop_number;
    
    char prop_name[1000];
    char prop_data[1000];
    int prop_name_length = 0;
    int prop_data_length = 0;

    for (int i = 0; i < prop_number; i++)
    {
        fread(&prop_name_length, 4, 1, f);
        fread(prop_name, 1, prop_name_length, f);
        fread(&prop_data_length, 4, 1, f);
        fread(prop_data, 1, prop_data_length, f);
        //var_write(var, prop_name, prop_data, prop_data_length);
    }
    
    var_current = var;
    fclose(f);
    return var;
}


int var_save(VAR* var, char* filename)
{
    if(var == 0)
    {
        var = var_current;
    }
    FILE* f = fopen(filename, "wb");
    if(f == 0)
    {
        return 1;
    }
    int version = 1;

    fwrite("var ", 1, 4, f);
    fwrite(&version, 4, 1, f);

    int var_name_length = strlen(var->name) + 1;
    fwrite(&var_name_length,    4, 1, f);
    fwrite(var->name,       1, var_name_length, f);
    int prop_num = var->prop_num;
    fwrite(&prop_num,           4, 1, f);

    for (int i = 0; i < prop_num; i++)
    {   
        int prop_name_length = strlen(var->prop[i].name) + 1;
        int prop_data_length = var->prop[i].length;

        fwrite(&prop_name_length, 4, 1, f);
        fwrite(var->prop[i].name, 1, prop_name_length, f);

        fwrite(&prop_data_length, 4, 1, f);
        fwrite(var->prop[i].data.vd, 1, prop_data_length, f);
    }
    

    fclose(f);
    return 0;
}

/// set and get section

/*
uint32_t var_datagetlength(VAR* var, char* prop_name)
{
    if(var == 0)
    {
        var = var_current;
    }

    int prop_index = var_findprop(var, prop_name);
    if(prop_index == -1)
    {
        return 0;
    }

    return var->prop[prop_index].length;
}

int var_datagettype(VAR* var, char* prop_name)
{
    if(var == 0)
    {
        var = var_current;
    }

    int prop_index = var_findprop(var, prop_name);
    if(prop_index == -1)
    {
        return 0;
    }

    return var->prop[prop_index].type;
}

int var_varsetname(VAR* var, char* name)
{
    if(name == 0)
    {
        return -1;
    }
    if(var == 0)
    {
        var = var_current;
    }
    free(var->name);
    var->name = malloc(strlen(name) + 1);
    strcpy(var->name, name);
    return 0;
} 
*/