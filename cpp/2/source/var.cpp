#include "../include/var.hpp"

bool legal_type(int type)
{
    if (type > (TYPE_BUFFER | TYPE_ARRAY | TYPE_REFERENCE))
    {
        return false;
    }else if (type < 0)
    {
        return false;
    }

    return true;
}

var::var()
{
    this->name = nullptr;
    this->type = TYPE_UNDEFINED;
    this->length = 0;
    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
}

var var::init(const char* name, uint8_t type)
{
    var* lokal = this;
    lokal->name = _strdup(name);
    lokal->type = type;
    lokal->length = 0;
    return *lokal;
}

var::var(uint8_t type)
{
    this->name = nullptr;
    this->type = type;
    this->length = 0;
    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
}
// no multi array
var::var(uint8_t type, int64_t arr_num)
{
    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
    
    this->name = nullptr;
    this->type = type | TYPE_ARRAY;
    this->count = arr_num;

    switch (type ^ TYPE_ARRAY)
    {
    case TYPE_STRING:
        this->arr_string = (struct block*)malloc(sizeof(struct block) * arr_num);
        memset((void*)this->arr_string, 1, sizeof(struct block) * arr_num);
        break;
    
    case TYPE_INT:
        this->arr_int = (int64_t*)malloc(sizeof(int64_t) * arr_num);
        memset((void*)this->arr_int, 1, sizeof(int64_t) * arr_num);
        break;

    case TYPE_FLOAT:
        this->arr_float = (double*)malloc( sizeof(double) * arr_num);
        memset((void*)this->arr_float, 1,   sizeof(double) * arr_num);
        break;

    case TYPE_STRUCT:
        this->arr_struct = (var*)malloc( sizeof(var) * arr_num);
        memset((void*)this->arr_struct, 1, sizeof(var) * arr_num);
        break;

    case TYPE_BOOL:
        this->arr_bool = (bool *)malloc( sizeof(bool) * arr_num);
        memset((void*)this->arr_bool, 1, sizeof(bool) * arr_num);
        break;

    default:
        std::cerr << "Unregistered type";
        exit(-1);
        break;
    }
    
}

var::var(const char* name, uint8_t type)
{
    if (name != 0)
    {
        this->name = strndup(name, strlen(name));
    }else
    {
        this->name = _strdup("(NULL)");
    }
    
    this->type = type;
    this->length = 0;
    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
}
// no multi array
var::var(const char* name, uint8_t type, int64_t arr_num)
{
    if (type & TYPE_REFERENCE)
    {
        std::cerr << "Reference type are not allowed to make an array" << std::endl;
        exit(-1);
    }

    this->info1 = 0;
    this->info2 = 0;
    this->info3 = 0;
    
    this->name = _strdup(name);
    this->type = type | TYPE_ARRAY;
    this->count = arr_num;

    switch (type ^ TYPE_ARRAY)
    {
    case TYPE_STRING:
        this->arr_string = (struct block*)malloc(sizeof(struct block) * arr_num);
        memset((void*)this->arr_string, 0, sizeof(struct block) * arr_num);
        break;
    
    case TYPE_INT:
        this->arr_int = (int64_t*)malloc(sizeof(int64_t) * arr_num);
        memset((void*)this->arr_int, 0, sizeof(int64_t) * arr_num);
        break;

    case TYPE_FLOAT:
        this->arr_float = (double*)malloc( sizeof(double) * arr_num);
        memset((void*)this->arr_float, 0,   sizeof(double) * arr_num);
        break;

    case TYPE_STRUCT:
        this->arr_struct = (var*)malloc( sizeof(var) * arr_num);
        memset((void*)this->arr_struct, 0, sizeof(var) * arr_num);
        break;

    case TYPE_BOOL:
        this->arr_bool = (bool *)malloc( sizeof(bool) * arr_num);
        memset((void*)this->arr_bool, 0, sizeof(bool) * arr_num);
        break;

    default:
        std::cerr << "Unregistered type";
        exit(-1);
        break;
    }

}

void var::clear()
{
    char buffer[1000];
    strcpy_s(buffer, this->name);
    if (this->name)
    {
        delete this->name;
    }
    
    if (this->type & TYPE_ARRAY)
    {
        delete this->arr_data;
    } else if (this->type == TYPE_STRUCT)
    {
        //delete this->data2.str;
        if (this->struct_count)
        {
            delete this->struct_data;
            this->struct_count = 0;
        }//std::cout << ",kijnuhbygv";
    }
    

    //std::cout << "Destroyed " << buffer << std::endl;
}

var* var::dup(char* name)
{
    var* v;
    
    if (this->type & TYPE_ARRAY)
    {
        v = new var(this->type, this->count);
        if (name)
        {
            v->name = _strdup(name);
        }

        switch (this->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            for (size_t i = 0; i < this->count; i++)
            {
                v->arr_int[i] = this->arr_int[i];
            }//std::cout << (int64_t)v->name[1];printf("%p, ", &v->block[i].data1.i);printf("end %p", v->name);
            
            break;

        case TYPE_FLOAT:
            for (size_t i = 0; i < this->count; i++)
            {
                v->arr_float[i] = this->arr_float[i];
            }
            break;

        case TYPE_STRING:
            for (size_t i = 0; i < this->count; i++)
            {
                v->arr_string[i].data = _strdup(this->arr_string[i].data);
                v->arr_string[i].length = this->arr_string[i].length;
            }
            break;

        case TYPE_STRUCT:
            std::cerr << "Type struct is not allowed at array duplicating " << this->name << std::endl;
            exit(-1);
        default:
            break;
        }

    }else if (this->type == TYPE_STRUCT)
    {
        v = new var(this->type);
        if (name)
        {
            v->name = _strdup(name);
        }
        v->struct_count = this->struct_count;
        v->struct_data = (var*)calloc(v->struct_count, sizeof(var));
        var* child = v->struct_data;
        var* source = this->struct_data;
        int64_t limit = this->struct_count;
        for (size_t i = 0; i < limit; i++)
        {
            if (this->struct_data[i].type == TYPE_STRUCT)
            {
                child[i] = *source[i].dup(source[i].name);
                continue;
            }else
            {
                child[i] = {0};
                //child[i].name = strdup(this->struct_data[i].name);
                child[i] = var(source[i].name, source[i].type);
                child[i].write(source[i]);
            }
        }
        
    }else
    {
        v = new var(this->type);
        if (name)
        {
            v->name = _strdup(name);
        }
    
        switch (this->type)
        {
        case TYPE_INT:
            v->int_data = this->data1.i;
            break;
        
        case TYPE_STRING:
            v->string_data = _strdup(this->string_data);
            v->string_length = this->string_length;
            break;

        case TYPE_FLOAT:
            v->float_data = this->float_data;
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
    case TYPE_UNDEFINED :
        return _strdup("Unknown");
    case TYPE_ARRAY :
        return _strdup("Array");
    case TYPE_STRUCT :
        return _strdup("Structure");
    case TYPE_BOOL :
        return _strdup("Boolean");
    case TYPE_INT ://std::cout << "im here " << strndup("Integral", 9);
        return strndup("Integral", 9);
    case TYPE_FLOAT :
        return _strdup("Float");
    case TYPE_STRING :
        return _strdup("String");
    case TYPE_BUFFER :
        return _strdup("Buffer");
    case TYPE_REFERENCE :
        return _strdup("Reference");

    default:
        return _strdup("NULL");
    }
}

static bool sen_comp(char* str, const char* prod)
{
    //int max_len = stop_at(str, "\n");
    int prod_len = strlen(prod);

    for (size_t i = 0; i < prod_len; i++)
    {
        if (prod[i] != str[i])
        {
            return false;
        }
    }
    return true;
}

int get_datatype_i(char* type)
{
    if (sen_comp(type, "int"))
    {
        return TYPE_INT;
    }else if (sen_comp(type, "float"))
    {
        return TYPE_FLOAT;
    }else if (sen_comp(type, "bool"))
    {
        return TYPE_BOOL;
    }else if (sen_comp(type, "string"))
    {
        return TYPE_STRING;
    }else
    {
        std::cerr << "Undefined " << type << std::endl;
        exit(-1);
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
        if (this->string_length != 0)
        {
            free(this->string_data);
        }
        this->string_data = _strdup(data.str);
        this->string_length = strlen(data.str) + 1;
        break;
    
    case TYPE_INT:
        this->int_data = data.i;
        break;

    case TYPE_FLOAT:
        this->float_data = data.f;
        break;

    case TYPE_REFERENCE:
        //this->data1.ptr = data.ptr;
        break;

    case TYPE_BOOL:
        this->data1.b = data.b;
        break;

    default:
        std::cerr << this->name << " has unknown data type (" << get_datatype(this->type) << ")" << std::endl;
        exit(-1);
    }
    
    return 0;
}

int var::write(var& v)
{
    if ( (this->type == TYPE_ARRAY) || (this->type == TYPE_STRUCT) || (this->type == TYPE_BUFFER) )
    {
        std::cerr << "Cant write single data into \"" << this->name << "\" since the data type was " << get_datatype(this->type) << std::endl;
        exit(-1);
    }else if ( (v.type == TYPE_ARRAY) || (v.type == TYPE_STRUCT) || (v.type == TYPE_BUFFER) )
    {
        std::cerr << "Cant write single data into \"" << this->name << "\" since the data type was " << get_datatype(this->type) << " from variable " << v.name << " has data type " << get_datatype(v.type) << std::endl;
        exit(-1);
    }
    
    if (this->type != v.type)
    {
        std::cerr << "Cant write " << v.name << " into " << this->name << std::endl;
        exit(-1);
    }

    switch (this->type)
    {
    case TYPE_STRING:
        if (this->string_length != 0)
        {
            free(this->string_data);
        }
        this->string_data = _strdup(v.string_data);
        this->string_length = v.string_length;
        break;
    
    case TYPE_INT:
        this->int_data = v.int_data;
        break;

    case TYPE_FLOAT:
        this->float_data = v.float_data;
        break;

    case TYPE_REFERENCE:
        std::cout << "Not yet coded :p" << std::endl;
        exit(-1);
        break;

    case TYPE_BOOL:
        this->data1.b = v.data1.b;
        break;

    default:
        std::cerr << this->name << " has unknown data type (" << this->type << ")" << std::endl;
        exit(-1);
    }
    
    return 0;
}

variant var::read()
{
    switch (this->type)
    {
    case TYPE_INT:
        return data1;
        break;

    case TYPE_FLOAT:
        return data1;
        break;

    case TYPE_BOOL:
        return data1;
        break;

    case TYPE_STRING:
        return data2;
        break;
    
    default:
        break;
    }
    return this->data1;
}

void var::print()
{
    if ( this->type == TYPE_BUFFER )
    {
        std::cerr << "Cant printing buffer";
    }

    if (this->name == nullptr)
    {
        std::cout << "(NULL) = ";
    }else
    {
        std::cout << this->name << " = ";
    }
    
    if (this->type & TYPE_ARRAY)
    {
        std::cout << "[ ";
        size_t i = 0;
        switch (this->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            for (i = 0; i < this->count - 1; i++)
            {
                //printf("%")
                std::cout << this->arr_int[i] << ", ";
            }
            std::cout << this->arr_int[i];
            break;
        
        case TYPE_FLOAT:
            for (i = 0; i < this->count - 1; i++)
            {
                std::cout << this->arr_float[i] << ", ";
            }
            std::cout << this->arr_float[i];
            break;

        case TYPE_BOOL:
            for (i = 0; i < this->count - 1; i++)
            {
                if (this->arr_bool[i])
                {
                    std::cout << "true, ";
                }else
                {
                    std::cout << "false, ";
                }
            }
            if (this->arr_bool[i])
            {
                std::cout << "true";
            }else
            {
                std::cout << "false";
            }
            break;
        
        case TYPE_STRING:
            for (i = 0; i < this->count - 1; i++)
            {
                std::cout << "\"" << this->arr_string[i].data << "\", ";
            }
            std::cout << "\"" << this->arr_string[i].data << "\"";
            break;

        default:
            break;
        }
        std::cout << " ]";
    }else if (this->type == TYPE_STRUCT)
    {
        //std::cout << "not yet coded :p"; exit(9);
        int64_t limit = this->struct_count-1;
        int64_t i;
        std::cout << "{" << std::endl;
        for (i = 0; i < limit; i++)
        {
            this->struct_data[i].print();
            std::cout << ", " <<std::endl;
        }
        this->struct_data[i].print();
        std::cout << std::endl << "}";
        
    }else
    {
        switch (this->type)
        {
        case TYPE_INT:
            std::cout << this->int_data;
            break;

        case TYPE_FLOAT:
            std::cout << this->float_data;
            break;

        case TYPE_BOOL:
            if (this->bool_data)
            {
                std::cout << "true";
            }else
            {
                std::cout << "false";
            }
            break;

        case TYPE_STRING:
            if (this->string_length)
            {
                std::cout << this->string_data;
            }else
            {
                std::cout << "(NULL)";
            }
            break;
        
        default:
            break;
        }
        return;
    }
    
    //std::cout << std::endl;
    

}

int var::save(const char* filename)
{
    std::ofstream file(filename, std::ios::binary | std::ios::out);

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
                file.write((char*)&this->arr_int[i], 8);
            }
            break;
        
        case TYPE_FLOAT:
            for (size_t i = 0; i < this->count; i++)
            {
                file.write((char*)&this->arr_float[i], 8);
            }
            break;

        case TYPE_BOOL:
            for (size_t i = 0; i < this->count; i++)
            {
                file.write((char*)&this->arr_bool[i], 1);
            }
            break;

        case TYPE_STRING:
            for (size_t i = 0; i < this->count; i++)
            {
                file.write((char*)&this->arr_string[i].length, 8);
                file.write(this->arr_string[i].data, this->arr_string[i].length + 1);
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
        this->arr_bool[index] = data.b;
        break;

    case TYPE_INT: //printf("ptr = %p", this->block[0].data1);
        this->arr_int[index] = data.i;
        break;

    case TYPE_FLOAT:
        this->arr_float[index] = data.f;
        break;
    
    case TYPE_STRING: //std::cout << index;
        this->arr_string[index].length = strlen(data.str);
        this->arr_string[index].data = _strdup(data.str);
        break;
        
    default:
        break;
    }
    
    
    return 0;
}
// dont use this
/*
int64_t var::arr_find(variant data)
{
    if (this->type != TYPE_ARRAY)
    {
        std::cerr << this->name << " is not an array but " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    switch (this->type ^ TYPE_ARRAY)
    {
    case TYPE_INT:
        for (size_t i = 0; i < this->count; i++)
        {
            if (num[i] == data.i)
            {
                return i;
            }
        }
        break;
    
    case TYPE_STRING:
        for (size_t i = 0; i < this->count; i++)
        {
            if ( strcmp(data.str, arr_string[i].data2.str) == 0 )
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
*/

variant var::operator[](int64_t index)
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
    variant return_data;
    //std::cout << "not break";
    switch (type ^ TYPE_ARRAY)
    {
    case TYPE_STRING:
        return_data.str = this->arr_string[index].data;
        break;
    
    case TYPE_INT:
        return_data.i = this->arr_int[index];
        break;

    case TYPE_FLOAT:
        return_data.f = this->arr_float[index];
        break;

    case TYPE_STRUCT:
        return_data.var = &this->arr_struct[index];
        break;

    case TYPE_BOOL:
        return_data.b = this->arr_bool[index];
        break;

    default:
        std::cerr << "Unregistered type";
        exit(-1);
        break;
    }
    
    return return_data;
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
        
        //this->data1.ptr = realloc(this->data1.ptr, this->length + len);
        //memcpy((this->data1.ptr) + this->length, data, len);
        //this->length += len;
        break;
    }

    
    return 0;
}

// Structure
int var::struct_write(const char* member, variant data)
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

int var::struct_write(const char* member, variant data1, variant data2)
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

var* var::struct_find(const char* member)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    //int member_len = strlen(member);
    var* temp = this->struct_data;
    int64_t count = this->struct_count;
    //std::cout << count;
    for ( size_t i = 0; i < count; i++ )
    {   //std::cout << member << ": :" << temp[i].name;
        
        if ( sen_comp(temp[i].name, member) )
        {
            return &( ( this->struct_data )[i] );
        }
    }
    int stop;
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

var* var::struct_create(const char* member, uint8_t type)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }
    
    //if (this->struct_find(member))
    //{
    //    std::cerr << this->name << " already has " << member << std::endl;
    //    exit(-1);
    //}
//printf("creating %s ", member);

    if (this->count == 0)
    {
        this->struct_data = (var*)malloc(sizeof(var));
        //printf("allloc pos = %p, ", pos); pos = this->struct_data;
    }else
    {
        this->struct_data = (var*)realloc(data3.ptr, (sizeof(var) * (this->struct_count + 1)));
        //printf("realloc pos = %p, ", pos); pos = &( this->struct_data[this->struct_count] );
    }
    var& pos = this->struct_data[struct_count];

    this->struct_count++;
    pos = var(member, type); //std::cout << "Created " << pos->name << this->count;
    //pos->name = _strdup(member);
    //std::cout << pos->name;
    return &pos;
}

var* var::struct_create(const char* member, uint8_t type, int64_t count)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }
    
    //if (this->struct_find(member))
    //{
    //    std::cerr << this->name << " already has " << member << std::endl;
    //    exit(-1);
    //}
//printf("creating %s ", member);

    if (this->count == 0)
    {
        this->struct_data = (var*)malloc(sizeof(var));
        //printf("allloc pos = %p, ", pos); pos = this->struct_data;
    }else
    {
        this->struct_data = (var*)realloc(data3.ptr, (sizeof(var) * (this->struct_count + 1)));
        //printf("realloc pos = %p, ", pos); pos = &( this->struct_data[this->struct_count] );
    }
    var& pos = this->struct_data[struct_count];

    this->struct_count++;
    pos = var(member, type, count); //std::cout << "Created " << pos->name << this->count;
    //pos->name = _strdup(member);
    //std::cout << pos->name;
    return &pos;
}

var* var::operator[](const char* member)
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

