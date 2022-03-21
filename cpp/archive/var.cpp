#include "var.hpp"

al::var* var_current;

int _write(al::var* var, char* prop_name, uint64_t length, variant data, uint8_t type, uint32_t write_flags)
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
    case MEMALLOC: // Just reallocate a new memory
        prop_dst->data.vp = malloc(length);
        memset(prop_dst->data.vp, 0, length);
        prop_dst->length = length;
        break;
    
    case MEMCOPY: // Realocate and copy the value
        if (length != 0)
        {
            prop_dst->data.vp = malloc(length);
            memcpy(prop_dst->data.vp, data.vp, length);
            prop_dst->length = length;
        }else
        {
            prop_dst->data = data;
            prop_dst->length = length;
        }
        break;

    case MEMPOINTER:

    default:
        prop_dst->data = data;
        prop_dst->length = length;
        break;
    }
    prop_dst->type = type;
    var->version++;
    
    return 0;
}

int al::var::write(char* prop_name, uint64_t length, variant data, uint8_t type, uint32_t write_flags)
{
    return _write(this, prop_name, length, data, type, write_flags);
}

int al::var::write(char* prop_name, char* data)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    variant v; 
    v.cp = data; //std::cout << this->name << " jnuhbygv ";
    int ret = _write(this, prop_name, strlen(data)+1, v, CHARP, MEMCOPY);
    
    return ret;
}

int al::var::write(char* prop_name, double data)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    variant v;
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
    type |= VOIDP;
    variant v;
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
    variant v;
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

int al::prop::set_name(char* name)
{
    if ( name != nullptr )
    {
        delete this->name;
    };
    
    this->name = strdup(name);

    return 0;
}

int al::var::set_name(char* name)
{
    if ( name != nullptr )
    {
        delete this->name;
    };
    
    this->name = strdup(name);

    return 0;
}

variant* al::var::read(char* prop_name)
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

    if ( strncmp( prop_type->data.cp, "var array", 10 ) )
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
    if(strncmp(type->data.cp, "var array", 10) != 0)
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
    //var->prop.~vector();
    free(var->name); var->name = 0;
    
    //var->prop_num = 0;
    var->flags = VAR_FLAG_EMPTY;
    var->version = 0;

    return 0;
}

int al::var::destroy()
{
    if (this->flags == VAR_FLAG_EMPTY)
    {
        return 1;
    }

    char* str = strdup(this->name); //printf("\n%p %p\n", this->name, str);
    int code = var_delete(this);
    std::cout << "Destroyed variable \"" << str << "\"" << std::endl;
    free(str);
    return code;
}

/*
class filestream
{
private:
    FILE* f;
public:
    filestream(char* filename)
    {
        f = fopen(filename, "wb+");
        if (!f)
        {
            std::cout << "Can't open " << filename <<std::endl;
            exit(1);
        }
    }
    ~filestream()
    {
        fclose(f);
    }

    int write(char* data, uint64_t len)
    {
        fwrite(data, 1, len, f);
    }

    int read(char* data, uint64_t len)
    {
        fread(data, 1, len, f);
    }

};

int al::var::save(char* filename)
{
    std::ofstream file;
    file.open(filename, std::ios::binary | std::ios::out);
    if (!file.is_open())
    {
        std::cerr << "Can't save \"" << this->name << "\" into \"" << filename << "\"" << std::endl;
        return -1;
    }

    char* buffer = 0;
    uint32_t version = 3;
    uint32_t var_name_len = strlen(this->name) + 1;
    uint32_t var_flag = this->flags;
    uint32_t var_version = this->version;
    uint32_t prop_num = this->prop.size();

    file << "var ";
    file.write((char*)&version, 4);
    file.write((char*)&var_name_len, 4);
    file.write(this->name, var_name_len);
    file.write((char*)&var_flag, 4);
    file.write((char*)&var_version, 4);
    file.write((char*)&prop_num, 4);

    al::prop* prop = this->prop.data();
    for (int i = 0; i < prop_num; i++)
    {
        uint32_t prop_name_len = strlen(prop[i].name) + 1;
        uint8_t prop_flag = prop[i].flags;
        uint8_t prop_type = prop[i].type;
        uint64_t prop_length = prop[i].length;
        DATA data = prop[i].data;

        file.write((char*)&prop_name_len, 4);
        file.write(prop[i].name, prop_name_len);
        file.write((char*)&prop_flag, 1);
        file.write((char*)&prop_type, 1);
        file.write((char*)&prop_length, 8);

        if (prop_length == 0)
        {
            file.write((char*)&data, 8);
        }else
        {
            file.write(data.cp, prop_length);
        }
    }
    
    
    file.close();//std::cout << "save";
    return 0;
}
*/

int _save(al::var* var, std::ofstream& file)
{
    
    //file.open(filename, std::ios::binary | std::ios::out);;
    if (!file.is_open())
    {
        std::cerr << "Can't save \"" << var->name << "\"" << std::endl;
        return -1;
    }
    //std::cout << "kmijnbygvcrd ";
    char* buffer = 0;
    uint32_t version = 4;
    uint32_t var_flag = var->flags;
    if (var_flag == VAR_FLAG_EMPTY)
    {
        file << "var ";
        file.write((char*)&version, 4);
        file.write((char*)&var_flag, 4);
        return 0;
    }
    uint32_t var_name_len = strlen(var->name) + 1;
    uint32_t var_version = var->version;
    uint32_t prop_num = var->prop.size();

    file << "var ";
    file.write((char*)&version, 4);
    file.write((char*)&var_flag, 4);
    file.write((char*)&var_name_len, 4);
    file.write(var->name, var_name_len);
    file.write((char*)&var_version, 4);
    file.write((char*)&prop_num, 4);

    std::cout << var->name << " var is written" << std::endl;

    if (prop_num == 0)
        return 0;

    al::prop* prop = var->prop.data();
    for (int i = 0; i < prop_num; i++)
    {
        uint32_t prop_name_len = strlen(prop[i].name) + 1;
        uint8_t prop_flag = prop[i].flags;
        uint8_t prop_type = prop[i].type;
        uint64_t prop_length = prop[i].length;
        variant data = prop[i].data;

        file.write((char*)&prop_flag, 1);
        file.write((char*)&prop_name_len, 4);
        file.write(prop[i].name, prop_name_len);
        file.write((char*)&prop_type, 1);
        file.write((char*)&prop_length, 8);

        std::cout << prop[i].name << " prop is written" << std::endl;

        if (prop_type == TYPE_VAR)
        {
            int count = prop_length/sizeof(al::var);
            for (int j = 0; j < count; j++)
            {
                al::var* savedvar = (al::var*)(data.vp);
                _save(&savedvar[j], file);
            }
        }else
        {
            if (prop_length == 0)
            {
                file.write((char*)&data, 8);
            }else
            {
                file.write(data.cp, prop_length);
            }
        }
    }
    
    
    file.close();//std::cout << "save";
    return 0;
}

int al::var::save(char* filename)
{
    std::ofstream file;
    file.open(filename, std::ios::binary | std::ios::out);
    if (!file.is_open())
    {
        std::cerr << "Can't save \"" << this->name << "\" into \"" << filename << "\"" << std::endl;
        return -1;
    }

    _save(this, file);
    
    file.close();//std::cout << "save";
    return 0;
}

al::var* al::var::load(char* filename)
{
    std::ifstream file;
    file.open(filename, std::ios::binary | std::ios::in);
    if (!file.is_open())
    {
        std::cerr << "Can't load \"" << filename << "\"" << std::endl;
        return 0;
    }
    
    char header[4];
    uint32_t version = 3;
    char var_name[1024];
    uint32_t var_name_len;
    uint32_t var_flag;
    uint32_t var_version;
    uint32_t prop_num;

    file.read(header, 4);
    if (strncmp(header, "var ", 4))
    {
        std::cerr << filename << " is not Variable data" << std::endl;
    }
    //std::cout << "kmijnuhb";
    file.read((char*)&version, 4);
    file.read((char*)&var_name_len, 4);
    file.read(var_name, var_name_len);
    file.read((char*)&var_flag, 4);
    file.read((char*)&var_version, 4);
    file.read((char*)&prop_num, 4);

    this->name = strdup(var_name);
    this->flags = var_flag;
    this->version = var_version;
    this->prop.resize(prop_num);
    
    al::prop* prop = this->prop.data();
    for (int i = 0; i < prop_num; i++)
    {
        uint32_t prop_name_len;
        char prop_name[1024];
        uint8_t prop_flag;
        uint8_t prop_type;
        uint64_t prop_length;
        variant data;

        file.read((char*)&prop_name_len, 4);
        file.read(prop_name, prop_name_len);
        file.read((char*)&prop_flag, 1);
        file.read((char*)&prop_type, 1);
        file.read((char*)&prop_length, 8);//std::cout << prop_name_len;

        prop[i].name = strdup(prop_name);
        prop[i].flags = prop_flag;
        prop[i].type = prop_type;
        prop[i].length = prop_length;
        
        if (prop_length == 0)
        {
            file.read((char*)&prop->data, 8);
        }else
        {
            file.read(prop[i].data.cp, prop_length);
        }
    }
    
    file.close();
    return 0;
}
