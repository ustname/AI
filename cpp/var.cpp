#include "var.hpp"

al::var* var_current;

int _write(al::var* var, char* prop_name, uint64_t length, DATA data, uint8_t type, uint32_t write_flags)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    
    al::prop* prop_dst = var->findprop(prop_name); //std::cout << var->name << prop_name << std::endl;

    //      Write new prop
    if(prop_dst == 0) 
    {
        if (var->prop.size() == 0) // If vector size is 0, start make 1
        {
            var->prop.resize(1);
        }
        else // Use the back of properties to write
        {
            //printf("init exit");
            var->prop.resize(var->prop.size() + 1);
        }
        //var->prop = Prop;printf("%i ", var->prop_num);//exit(0);
        prop_dst = &var->prop.back(); //printf("prop_dst %p ", prop_dst); 
        
        prop_dst->name = strdup(prop_name);
        prop_dst->length = 0;
        prop_dst->type = VOID0;
        prop_dst->flags = PROP_FLAG_USED;
    }

    if (prop_dst->length != length)
    {//printf("prop %p\n", prop_dst); exit(0);
        free(prop_dst->data.vp);
        prop_dst->length = 0;
    }
    
    switch (write_flags)
    {
    case MEMALLOC:
        prop_dst->data.vp = malloc(length);
        memset(prop_dst->data.vp, 0, length); std::cout << prop_dst->data.vp;
        prop_dst->length = length;
        break;
    
    case MEMCOPY:
        if (length != 0)
        {
            prop_dst->data.vp = malloc(length);
            memcpy(prop_dst->data.vp, data.vp, length);
            prop_dst->length = length;
        }else
        {
            prop_dst->data = data;
        }
        break;

    case MEMPOINTER:

    default:
        prop_dst->data = data;
    }
    prop_dst->type = type;
    var->version++;
    
    return 0;
}

int al::var::write(char* prop_name, char* data)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    DATA v; 
    v.cp = data; //std::cout << this->name << " jnuhbygv ";
    int ret = _write(this, prop_name, strlen(data)+1, v, CHARP, MEMCOPY);
    
    return ret;
}

/*
int al::var::write(char* prop_name, int64_t data)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    DATA v;
    v.i = data;
    int ret = _write(this, prop_name, 0, v, SI64, MEMPOINTER);
    
    return ret;
}
*/

int al::var::write(char* prop_name, double data)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    DATA v;
    v.d = data;
    int ret = _write(this, prop_name, 0, v, DOUBLEF, MEMPOINTER);
    
    return ret;
}

int al::var::write(char* prop_name, uint8_t type, uint64_t num)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    uint64_t length = 0;
    switch (type)
    {
    case TYPE_VAR:
        length = num * sizeof(al::var); //std::cout << length << ", " << num;
        break;

    default:
        length = num;
        break;
    }

    DATA v;
    v.d = 0;
    int ret = _write(this, prop_name, length, v, type, MEMALLOC);
    
    return ret;
}

int al::var::write(char* prop_name, void* data, uint64_t len)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    DATA v;
    v.vp = data;
    int ret = 0;
    
    if (len == 0)
    {
        ret = _write(this, prop_name, len, v, VOIDP, MEMPOINTER);
    }else
    {
        ret = _write(this, prop_name, len, v, VOIDP, MEMCOPY);
    }
    

    return ret;
}

int al::var::rewrite(char* prop_name, char* prop_newname)
{
    al::prop* prop = this->findprop(prop_name);
    if (!prop)
    {
        return 1;
    }

    delete prop->name;
    prop->name = strdup(prop_newname);

    return 0;
}

DATA* al::var::read(char* prop_name)
{
    al::prop* prop = this->findprop(prop_name);
    if (!prop)
    {
        return 0;
    }
    else return &prop->data;
}

al::prop* al::var::findprop(char* prop_name)
{ //
    al::var* var = this;
    int prop_count = var->prop.size();
    if(prop_count == 0)
    {
        return 0;
    }
    if (var == 0)
    {
        var = var_current;
    }else
    {
        var_current = var;
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

al::var* al::var::find(char* name)
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

    al::prop* prop_type = this->findprop("type");

    if (!prop_type)
    {
        std::cerr << this->name << " is incomplete var";
        exit(1);
    }

    if ( strncmp( prop_type->data.cp, "stack var", 10 ) )
    {   printf("not stack var, but %i", *prop_type->data.cp); exit(7);
        return 0;
    }
    limit = this->findprop("var_num")->data.d;
    al::var* data = (al::var*)this->findprop("data")->data.vp; //printf(" %p ", data);
    //std::cout << "limit is " << limit <<std::endl;
    for (uint64_t i = 0; i < limit; i++)
    {   //std::cout << i << std::endl;
        if(data[i].flags == 0) continue;
        //std::cout << data[i].name << " " << name << " before error " << data[i].flags << std::endl;
        if(strcmp(data[i].name, name) == 0)
        {
            //var_current = &data[i];
            return &data[i];
        }
    }
    //std::cout << "return 0" << std::endl;
    return 0;
}

int64_t var_findempty(al::var* var, int limit)
{
    //printf("%i = %i \n", 2, var[1].flags);
    //printf("limit = %i", limit);
    for (int i = 0; i < limit; i++)
    {//
        if (var[i].flags == VAR_FLAG_EMPTY)
        {
            return i;
        }
    }

    return -1;
}

al::var* al::var::create(char* name)
{
    if(this->find(name))
    {
        return 0;
    }

    al::prop* location;
    al::prop* type;
    uint64_t index;
    al::prop* var_num;
    //std::cout << "mikjnuhb";
    type = this->findprop("type");

    if (!type)
    {
        std::cerr << this->name << " is incomplete var" << std::endl;
        exit(1);
    }
    if(strncmp(type->data.cp, "stack var", 10) != 0)
    {
        std::cerr << this->name << " is not stack var, but " << type->data.cp << std::endl;
        exit(1);
    }
    
    var_num = this->findprop("var_num");
    location = this->findprop("data");
    al::var* varloc = (al::var*)location->data.vp;
    //std::cout << "var is " << varloc[2].flags << std::endl;
    index = var_findempty(varloc, (int)var_num->data.d);//printf(" from stack");
    //std::cout << " nor eror";
    //printf("location is %s", location->name);

    if (index == -1)
    { //std::cout << "im here";
        varloc = (al::var*)realloc(varloc, (int)var_num->data.d + 8);
        index = (int)var_num->data.d;
        var_num->data.d += 8;
    }

    al::var* var = &varloc[index];
    var->name = strdup(name);
    var->prop;
    var->flags = VAR_FLAG_USED;
    var->version = 0;
    
    std::cout << "Created variable \"" << var->name << "\"" << std::endl;
    var_current = var;
    return var;
}

int var_delete(al::var* var);

int var_cleanfromtype(al::prop* prop)
{
    switch (prop->type)
    {
        case TYPE_VAR:
        //printf(" cleaning var from (%p)", prop); //exit(7);
        //printf();
        var_delete((al::var*)prop->data.vp);
        //free(prop->data.vp);
        break;

        //case TYPE_SEN:
        //SEN* sen = prop->data.sen;
        //free(sen->src);
        //free(sen->args);
        //free(sen);
        //break;
    
        default: //printf("get called %s", prop->data.cp);printf("sucees free");
        free(prop->data.vp);
        break;
    }
}

int var_delete(al::var* var)
{   
    //printf("- %p - \n", var); //exit(9);
    //VAR* var;
    int prop_count;

    if(var == 0)
    {
        var = var_current;
    }
    //printf("\" %s %i \"\n", var->name, var->prop_num);
    prop_count = var->prop.size();//printf("exiting %u", prop_count); exit(9);
    for (int i = 0; i < prop_count; i++)
    {
        free(var->prop[i].name);
        if(var->prop[i].length == 0)
            continue;

        //printf("\"%s %p\"\n", var->prop[i].name, var->prop[i].name); printf(" -- %p -- ", var->prop[2].data.vp);
        //printf(" var_vault = %p var_now = %p \n", &VAR_vault->prop[vaultdata].data.var[0], var->prop[i].); //exit(8);
        var_cleanfromtype(&var->prop[i]);
        var->prop[i].length = 0;
    }//printf("already out\n");
    var->prop.~vector();
    free(var->name); var->name = 0;
    
    //var->prop_num = 0;
    var->flags = VAR_FLAG_EMPTY;
    var->version = 0;

    return 0;
}

int al::var::destroy()
{
    std::string str(this->name);
    int code = var_delete(this);
    std::cout << "Destroyed variable \"" << str << "\"" << std::endl;
    return code;
}

int al::var::save(char* filename)
{

    return 0;
}
