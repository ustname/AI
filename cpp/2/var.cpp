#include "var.hpp"

var::var()
{
    this->name = nullptr;
    this->type = TYPE_UNKNOWN;
    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
}

var var::init(char* name, uint8_t type)
{
    var lokal;
    lokal.name = strdup(name);
    lokal.type = type;
    lokal.length = 0;
    return lokal;
}

var::var(char* name, uint8_t type)
{
    this->name = strdup(name);
    this->type = type;
    this->length = 0;
    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
}

var::var(char* name, uint8_t type, int64_t arr_num)
{
    if (type & TYPE_REFERENCE)
    {
        std::cerr << "Reference type are not allowed to make an array" << std::endl;
        exit(-1);
    }

    
    this->name = strdup(name);
    this->type = type | TYPE_ARRAY;
    this->count = arr_num;
    this->block = (struct block*)malloc(sizeof(this->block) * arr_num);
    memset((void*)this->block, 0, sizeof(this->block) * arr_num);

    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
}

var::~var()
{
    //std::cout << "Constructed " << this->name << std::endl;
}

var var::dup()
{
    var v;
    if (this->type & TYPE_ARRAY)
    {
        v = var(this->name, this->type, this->count);

        switch (this->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            for (size_t i = 0; i < this->count; i++)
            {
                v.block[i].data1.i = this->block[i].data1.i;
            }
            break;

        case TYPE_FLOAT:
            for (size_t i = 0; i < this->count; i++)
            {
                v.block[i].data1.f = this->block[i].data1.f;
            }
            break;

        case TYPE_STRING:
            for (size_t i = 0; i < this->count; i++)
            {
                v.block[i].data1.str = strdup(this->block[i].data1.str);
                v.block[i].data2.i = this->block[i].data2.i;
            }
            break;

        case TYPE_STRUCT:
            std::cerr << "Type struct is not allowed at duplicating " << this->name << std::endl;
            exit(-1);
        default:
            break;
        }

    }else
    {
        v = var(this->name, this->type);
    
        switch (this->type)
        {
        case TYPE_INT:
            v.data1.i = this->data1.i;
            break;
        
        case TYPE_STRING:
            v.data1.str = strdup(this->data1.str);
            v.length = this->length;
            break;

        case TYPE_FLOAT:
            v.data1.f = this->data1.f;
            break;

        default:
            std::cerr << "Unknown data type of " << this->name << " with data type " << get_datatype(this->type) << std::endl;
            exit(-1);
        }
    }
    return v;
}

char* get_datatype(int type)
{
    switch (type)
    {
    case TYPE_UNKNOWN :
        return strdup("Unknown");
    case TYPE_ARRAY :
        return strdup("Array");
    case TYPE_STRUCT :
        return strdup("Structure");
    case TYPE_BOOL :
        return strdup("Boolean");
    case TYPE_INT :
        return strdup("Integral");
    case TYPE_FLOAT :
        return strdup("Float");
    case TYPE_STRING :
        return strdup("String");
    case TYPE_BUFFER :
        return strdup("Buffer");
    case TYPE_REFERENCE :
        return strdup("Reference");

    default:
        return strdup("NULL");
    }
}

char* get_datatype_i(char* type)
{
    switch (type)
    {
    case TYPE_UNKNOWN :
        return strdup("Unknown");
    case TYPE_ARRAY :
        return strdup("Array");
    case TYPE_STRUCT :
        return strdup("Structure");
    case TYPE_BOOL :
        return strdup("Boolean");
    case TYPE_INT :
        return strdup("Integral");
    case TYPE_FLOAT :
        return strdup("Float");
    case TYPE_STRING :
        return strdup("String");
    case TYPE_BUFFER :
        return strdup("Buffer");
    case TYPE_REFERENCE :
        return strdup("Reference");

    default:
        return strdup("NULL");
    }
}

// Single data
int var::write(variant data)
{
    if ( (this->type == TYPE_ARRAY) || (this->type == TYPE_STRUCT) || (this->type == TYPE_BUFFER) )
    {
        std::cerr << "Cant write single data into \"" << this->name << "\" since the data type was " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    switch (this->type)
    {
    case TYPE_STRING:
        if (this->length != 0)
        {
            free(this->data2.str);
        }
        this->data2.str = strdup(data.str);
        this->length = strlen(data.str) + 1;
        break;
    
    case TYPE_INT:
        this->data1.i = data.i;
        break;

    case TYPE_FLOAT:
        this->data1.f = data.f;
        break;

    case TYPE_REFERENCE:
        this->data1.ptr = data.ptr;
        break;

    case TYPE_BOOL:
        this->data1.b = data.b;
        break;

    default:
        std::cerr << this->name << " has unknown data type (" << this->type << ")" << std::endl;
        exit(-1);
    }
    
    return 0;
}

struct block* var::read()
{
    return this->block;
}

int var::print()
{
    if ( this->type == TYPE_BUFFER )
    {
        std::cerr << "Cant printing buffer";
    }

    std::cout << this->name << " = ";

    if (this->type & TYPE_ARRAY)
    {
        std::cout << "[ ";
        size_t i = 0;
        switch (this->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            for (i = 0; i < this->count - 1; i++)
            {
                std::cout << this->block[i].data1.i << ", ";
            }
            std::cout << this->block[i].data1.i;
            break;
        
        case TYPE_FLOAT:
            for (i = 0; i < this->count - 1; i++)
            {
                std::cout << this->block[i].data1.f << ", ";
            }
            std::cout << this->block[i].data1.f;
            break;

        case TYPE_BOOL:
            for (i = 0; i < this->count - 1; i++)
            {
                if (this->block[i].data1.b)
                {
                    std::cout << "True, ";
                }else
                {
                    std::cout << "False, ";
                }
            }
            if (this->block[i].data1.b)
            {
                std::cout << "True";
            }else
            {
                std::cout << "False";
            }
            break;
        
        case TYPE_STRING:
            for (i = 0; i < this->count - 1; i++)
            {
                std::cout << "\"" << this->block[i].data2.str << "\", ";
            }
            std::cout << "\"" << this->block[i].data2.str << "\"";
            break;

        default:
            break;
        }
        std::cout << " ]" << std::endl;
    }
    

}

int var::save(char* filename)
{
    std::ofstream file(filename, std::ios_base::openmode::_S_bin | std::ios_base::openmode::_S_out);

    uint32_t var_name_len = strlen(this->name) + 1;

    file.write((char*)&var_name_len, 4);
    file.write(this->name, var_name_len);
    file.write((char*)&this->type, 8);

    if (this->type & TYPE_ARRAY)
    {
        file.write((char*)&this->count, 8);
        switch (this->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            for (size_t i = 0; i < this->count; i++)
            {
                file.write((char*)&this->block[i].data1.i, 8);
            }
            break;
        
        case TYPE_FLOAT:
            for (size_t i = 0; i < this->count; i++)
            {
                file.write((char*)&this->block[i].data1.f, 8);
            }
            break;

        case TYPE_BOOL:
            for (size_t i = 0; i < this->count; i++)
            {
                file.write((char*)&this->block[i].data1.b, 8);
            }
            break;

        case TYPE_STRING:
            for (size_t i = 0; i < this->count; i++)
            {
                file.write((char*)&this->block[i].data1.i, 8);
                file.write(this->block[i].data2.str, this->block[i].data1.i + 1);
            }
            break;

        default:
            break;
        }
    }else
    {
        switch (this->type)
        {
        case TYPE_INT:
            file.write((char*)&this->data1.i, 8);
            break;

        case TYPE_FLOAT:
            file.write((char*)&this->data1.f, 8);
            break;

        case TYPE_STRING:
            file.write((char*)&this->length, 8);
            file.write(this->data2.str, this->length);
            break;

        case TYPE_BOOL:
            file.write((char*)&this->data1.b, 8);
            break;
        
        default:
            break;
        }
    }

    file.close();
    return 0;
}

// Array
int var::arr_write(int index, variant data)
{
    if (!(this->type & TYPE_ARRAY))
    {
        std::cerr << this->name << " is not an array but " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    if (this->count-1 < index)
    {
        std::cerr << this->name << " got an overflow with " << this->count << " to " << index << std::endl;
        exit(-1);
    }
    
    switch (this->type ^ TYPE_ARRAY)
    {
    case TYPE_BOOL:
        this->block[index].data1.b = data.b;
        break;

    case TYPE_INT: //printf("ptr = %p", this->block[0].data1);
        this->block[index].data1 = data;
        break;

    case TYPE_FLOAT:
        this->block[index].data1 = data;
        break;
    
    case TYPE_STRING: //std::cout << index;
        this->block[index].data1.i = strlen(data.str);
        this->block[index].data2.str = strdup(data.str);
        break;
        
    default:
        break;
    }
    
    
    return 0;
}
// dont use this
int64_t var::arr_find(variant data)
{
    if (this->type != TYPE_ARRAY)
    {
        std::cerr << this->name << " is not an array but " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    int64_t* num;
    char** str;
    bool* bo;

    switch (this->type ^ TYPE_ARRAY)
    {
    case TYPE_INT:
        num = &this->data1.i;
        for (size_t i = 0; i < this->count; i++)
        {
            if (num[i] == data.i)
            {
                return i;
            }
        }
        break;
    
    case TYPE_STRING:
        str = &this->_data.str;
        for (size_t i = 0; i < this->count; i++)
        {
            if ( strcmp(str[i], data.str) == 0 )
            {
                return i;
            }
        }
        break;

    case TYPE_BOOL:
        bo = &this->_data.b;
        for (size_t i = 0; i < this->count; i++)
        {
            if (bo[i] == data.b)
            {
                return i;
            }
        }
        break;

    default:
        std::cerr << "Cant find array in " << this->name << " for data type " << get_datatype(this->type ^ TYPE_ARRAY) << std::endl;
        break;
    }
    return -1;
}

block* var::operator[](int index)
{
    if (!(this->type & TYPE_ARRAY))
    {
        std::cerr << this->name << " is not an array type" << std::endl;
        exit(-1);
    }

    if (this->count-1 < index)
    {
        std::cerr << this->name << " is overflowing at index " << index << " while the count is " << this->count << std::endl;
        exit(-1);
    }
    //std::cout << "not break";
    return &this->block[index];
    
    //return this->data1;
}

// Buffer
int var::buf_write(void* data, int64_t len, int flag)
{
    if (!(this->type == TYPE_BUFFER))
    {
        std::cerr << this->name << " is not an buffer" << std::endl;
        exit(-1);
    }

    switch (flag)
    {
    case BUFFER_WRITE_OVER:

        if (this->length != 0)
        {
            free(this->data1.ptr);
        }
        memcpy(this->data1.ptr, data, len);
        this->length = len;
        break;
    
    case BUFFER_WRITE_APPEND:
        
        this->data1.ptr = realloc(this->data1.ptr, this->length + len);
        memcpy(this->data1.ptr + this->length, data, len);
        this->length += len;
        break;
    }

    
    return 0;
}

// Structure
int var::struct_write(char* member, variant data)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    var* pos = this->struct_find(member);

    if ( !pos )
    {
        std::cerr << this->name << " doesn't have " << member << std::endl;
        exit(-1);
    }

    if (pos->type == TYPE_BUFFER)
    {
        std::cerr << "Writing " << pos->name << " expected second argument" << std::endl;
        exit(-1);
    }else
    {
        return pos->write(data);
    }
}

int var::struct_write(char* member, variant data1, variant data2)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    var* pos = this->struct_find(member);

    if ( !pos )
    {
        std::cerr << this->name << " doesn't have " << member << std::endl;
        exit(-1);
    }

    if (pos->type == TYPE_BUFFER)
    {
        return pos->buf_write(data1.ptr, data2.i, BUFFER_WRITE_APPEND);
    }else
    {
        return pos->write(data1);
    }
}

var* var::struct_find(char* member)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    //int member_len = strlen(member);
    var* temp = this->data3.var;
    int64_t count = this->count;

    for ( size_t i = 0; i < count; i++ )
    {   //std::cout << member << " " << temp[i].name;
        if ( strcmp(temp[i].name, member) == 0 )
        {
            return &( ( (var*)this->data3.var )[i] );
        }
    }
    return 0;
}

//var* var::struct_create(var variable)
//{
//    if (!(this->type == TYPE_STRUCT))
//    {
//        std::cerr << this->name << " is not an structure" << std::endl;
//        exit(-1);
//    }
//
//    if (this->struct_find(variable.name))
//    {
//        std::cerr << this->name << " already has " << variable.name << std::endl;
//        exit(-1);
//    }
//    
//
//    var* pos;
//
//    if (count == 0)
//    {
//        data1.ptr = malloc(sizeof(var));
//        pos = data1.var;
//    }else
//    {
//        data1.ptr = realloc(data1.ptr, ++count);
//        pos = &( this->data1.var[count-1] );
//    }
//        
//    this->count++;
//    pos = new var(variable.name, variable.type);
//    
//    return pos;
//}

var* var::struct_create(char* member, uint8_t type)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    if (this->struct_find(member))
    {
        std::cerr << this->name << " already has " << member << std::endl;
        exit(-1);
    }
    

    var* pos;

    if (this->count == 0)
    {
        this->data3.ptr = malloc(sizeof(var));
        pos = this->data3.var; //printf("%p, ", pos);
    }else
    {
        this->data3.ptr = realloc(data3.ptr, ++count);
        pos = &( this->data3.var[count-1] ); //printf("%p, ", pos);
    }

    this->count++;
    *pos = var::init(member, type);//std::cout << "junhbygvt";
    //std::cout << pos->name;
    return pos;
}

var* var::operator[](char* member)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not a strcuture type" << std::endl;
        exit(-1);
    }

    var* pos = this->struct_find(member);
    if (pos == nullptr)
    {
        std::cerr << "there is no member \"" << member << "\" in " << this->name << std::endl;
        exit(-1);
    }
    
    return pos;
}

