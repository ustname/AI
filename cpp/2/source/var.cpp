#include "../include/var.hpp"
#include <math.h>


bool legal_type(int type)
{
    if (type > (TYPE_BUFFER | TYPE_ARRAY | TYPE_POINTER))
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

    if (type & TYPE_ARRAY)
    {
        this->arr_size = 0;
        this->arr_capacity = 0;
        return;
    }

    switch (type)
    {
    case TYPE_BUFFER:
        *(int64_t*)(this->buf_info) = 0;
        break;

    case TYPE_STRING:
        this->string_data = (char*)malloc(1);
        this->string_data[0] = '\0';
        break;

    default:
        this->data1.i = NULL;
        this->data2.i = NULL;
        this->data3.i = NULL;
        break;
    }

}
// no multi array
var::var(uint8_t type, int64_t arr_num)
{
    *this = var(type);
    this->type = type | TYPE_ARRAY;
    this->arr_size = arr_num;

    int64_t temp_capacity = log(arr_num) / log(2);
    this->arr_capacity = pow(2, temp_capacity + 1);

    switch (type)
    {
    case TYPE_STRING:
        this->arr_string = (struct block*)malloc(   sizeof(struct block) * arr_capacity);
        memset((void*)this->arr_string, 0,          sizeof(struct block) * arr_capacity);
        break;
    
    case TYPE_INT:
        this->arr_int = (int64_t*)malloc(   sizeof(int64_t) * arr_capacity);
        memset((void*)this->arr_int, 0,     sizeof(int64_t) * arr_capacity);
        break;

    case TYPE_FLOAT:
        this->arr_float = (double*)malloc(  sizeof(double) * arr_capacity);
        memset((void*)this->arr_float, 0,   sizeof(double) * arr_capacity);
        break;

    case TYPE_STRUCT:
        this->arr_struct = (var*)malloc(    sizeof(var) * arr_capacity);
        memset((void*)this->arr_struct, 0,  sizeof(var) * arr_capacity);
        break;

    case TYPE_BOOL:
        this->arr_bool = (bool *)malloc( sizeof(bool) * arr_capacity);
        memset((void*)this->arr_bool, 0, sizeof(bool) * arr_capacity);
        break;

    default:
        std::cerr << "Unregistered type (" << get_datatype(type) << ")\n";
        exit(-1);
        break;
    }
    
}

var::var(var& struct_type, int64_t arr_num)
{
    *this = var(&struct_type, arr_num);
}

var::var(var* struct_type, int64_t arr_num)
{
    if (!struct_type)
    {
        std::cerr << "Expected a struct\n";
        exit(-1);
    }
    sen::string arr_name(struct_type->name);
    arr_name << "_";
    int64_t write_index = arr_name.size-1;
    *this = var(TYPE_STRUCT, arr_num);
    for (size_t i = 0; i < arr_size; i++)
    {
        arr_struct[i].copy(struct_type);
        arr_name.writei_at(i, write_index);
        arr_struct[i].rename(arr_name.data);
    }
    //arr_name.clear();
    int stop;
}

var::var(const char* name, uint8_t type)
{
    *this = var(type);
    if (name != nullptr)
    {
        this->name = strndup(name, strlen(name));
    }else
    {
        this->name = _strdup("(NULL)");
    }
}
// no multi array
var::var(const char* name, uint8_t type, int64_t arr_num)
{
    if (type & TYPE_POINTER)
    {
        std::cerr << "Reference type are not allowed to make an array" << std::endl;
        exit(-1);
    }

    *this = var(type, arr_num);
    if (name != nullptr)
    {
        this->name = _strdup(name);
    }else
    {
        this->name = _strdup("(NULL)");
    }
}

var::var(const char* name, var& struct_type, int64_t arr_num)
{
    *this = var(name, &struct_type, arr_num);
}

var::var(const char* name, var* struct_type, int64_t arr_num)
{
    *this = var(struct_type, arr_num);
    if (name != nullptr)
    {
        this->name = _strdup(name);
    }else
    {
        this->name = _strdup("(NULL)");
    }
}

void var::clear()
{
    if (this->name)
    {
        delete this->name;
        this->name = nullptr;
    }
    
    if (this->type & TYPE_ARRAY)
    {
        free(this->arr_data);
    }
    else if (this->type == TYPE_STRUCT)
    {
        for (size_t i = 0; i < struct_count; i++)
        {
            struct_data[i].clear();
        }
        struct_count = 0;
        delete this->struct_data;
        if (struct_type)
        {
            delete struct_type;
        }
    }
    else
    {
        if (this->type == TYPE_STRING)
        {
            delete this->string_data;
        }
        else
        {
            this->data1.i = 0;
            this->data2.i = 0;
            this->data3.i = 0;
        }
    }
    
    this->type = TYPE_UNDEFINED;

    //std::cout << "Destroyed " << buffer << std::endl;
}

var* var::dup(char* name)
{
    var* v;
    
    if (this->type & TYPE_ARRAY)
    {
        v = new var(this->type, this->arr_size);
        if (name)
        {
            v->name = _strdup(name);
        }

        switch (this->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            for (size_t i = 0; i < this->arr_size; i++)
            {
                v->arr_int[i] = this->arr_int[i];
            }//std::cout << (int64_t)v->name[1];printf("%p, ", &v->block[i].data1.i);printf("end %p", v->name);
            
            break;

        case TYPE_FLOAT:
            for (size_t i = 0; i < this->arr_size; i++)
            {
                v->arr_float[i] = this->arr_float[i];
            }
            break;

        case TYPE_STRING:
            for (size_t i = 0; i < this->arr_size; i++)
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
    if (type & TYPE_ARRAY)
    {
        return _strdup("Array");
    }
    
    switch (type)
    {
    case TYPE_UNDEFINED :
        return _strdup("Unknown");
    case TYPE_STRUCT :
        return _strdup("Structure");
    case TYPE_BOOL :
        return _strdup("Boolean");
    case TYPE_INT :
        return _strdup("Integral");
    case TYPE_FLOAT :
        return _strdup("Float");
    case TYPE_STRING :
        return _strdup("String");
    case TYPE_BUFFER :
        return _strdup("Buffer");
    case TYPE_POINTER :
        return _strdup("Reference");
    default:
        return _strdup("NULL");
    }
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

static void _struct_write(var& new_struct, var& old_struct){

    if (!new_struct.struct_count)
    {
        for (size_t i = 0; i < old_struct.struct_count; i++)
        {
            new_struct.struct_create(old_struct.struct_data[i]);
        }
    }
    else
    {
        for (size_t i = 0; i < old_struct.struct_count; i++)
        {
            if ( !new_struct.struct_find(old_struct.struct_data[i].name) )
            {
                new_struct.struct_create(old_struct.struct_data[i]);
            }
        }
    }
    
    return;
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

    case TYPE_POINTER:
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
    if ( (this->type & TYPE_ARRAY) || (this->type == TYPE_BUFFER) )
    {
        std::cerr << "Cant write single data into \"" << this->name << "\" since the data type was " << get_datatype(this->type) << std::endl;
        exit(-1);
    }else if ( (v.type & TYPE_ARRAY) || (v.type == TYPE_BUFFER) )
    {
        std::cerr << "Cant write single data into \"" << this->name << "\" since the data type was " << get_datatype(this->type) << " from variable " << v.name << " has data type " << get_datatype(v.type) << std::endl;
        exit(-1);
    }

    if (this->type & TYPE_ARRAY)
    {
        std::cerr << "Not written yet for array\n";
        exit(-1);
    }
    
    if (this->type != v.type)
    {
        if ( 
            ((this->type == TYPE_INT) || (this->type == TYPE_FLOAT)) & 
                ((v.type == TYPE_INT) || (v.type == TYPE_FLOAT)) 
                )
        {
            
        }else
        {
            std::cerr << "Cant write " << this->name << " to " << v.name << std::endl;
            exit(-1);
        }
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

    case TYPE_POINTER:
        std::cout << "Not yet coded :p" << std::endl;
        exit(-1);
        break;

    case TYPE_BOOL:
        this->data1.b = v.data1.b;
        break;

    case TYPE_STRUCT:
        _struct_write(*this, v);
        break;

    default:
        std::cerr << this->name << " has unknown data type (" << this->type << ")" << std::endl;
        exit(-1);
    }
    
    return 0;
}

int var::write(var* v){
    return this->write(*v);
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

// dont use this
int var::compare(var& data)
{
    if (this->type != data.type)
    {
        return -2;
    }

    switch (this->type)
    {
    case TYPE_INT:
        if (this->int_data > data.int_data)
        {
            return 1;
        }else if (this->int_data < data.int_data)
        {
            return -1;
        }else
        {
            return 0;
        }
        break;

    case TYPE_FLOAT:
        if (this->float_data > data.float_data)
        {
            return 1;
        }else if (this->float_data < data.float_data)
        {
            return -1;
        }else
        {
            return 0;
        }
        break;

    case TYPE_STRING:
        if (this->string_length > data.string_length)
        {
            return 1;
        }else if (this->string_length < data.string_length)
        {
            return -1;
        }else
        {
            if (strcmp(this->string_data, data.string_data))
            {
                /* code */
            }
            
            return 0;
        }
        break;

    default:
        break;
    }
    
}

void print_var(var* o, int offset)
{
    std::string space;// std::cout << o->name << offset << std::endl;
    for (size_t i = 0; i < offset; i++)
    {
        space.append("\t");
    }
    //space.append("\\");

    std::cout << space;
    if (o->name == nullptr)
    {
        std::cout << "(NULL) = ";
    }else
    {
        std::cout << o->name << " = ";
    }

    if ( o->type == TYPE_BUFFER )
    {
        std::cerr << "Cant printing buffer";
        return;
    }

    if (o->type & TYPE_ARRAY)
    {
        std::cout << "[ ";
        if (o->arr_size == 0)
        {
            std::cout << "]";
            return;
        }
        
        size_t i = 0;
        int64_t arr_size = 0;
        switch (o->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            arr_size = o->arr_size - 1;
            for (i = 0; i < arr_size; i++)
            {
                //printf("%")
                std::cout << o->arr_int[i] << ", ";
            }
            std::cout << o->arr_int[i];
            break;
        
        case TYPE_FLOAT:
            arr_size = o->arr_size - 1;
            for (i = 0; i < arr_size; i++)
            {
                std::cout << o->arr_float[i] << ", ";
            }
            std::cout << o->arr_float[i];
            break;

        case TYPE_BOOL:
            arr_size = o->arr_size - 1;
            for (i = 0; i < arr_size; i++)
            {
                if (o->arr_bool[i])
                {
                    std::cout << "true, ";
                }else
                {
                    std::cout << "false, ";
                }
            }
            if (o->arr_bool[i])
            {
                std::cout << "true";
            }else
            {
                std::cout << "false";
            }
            break;
        
        case TYPE_STRING:
            arr_size = o->arr_size - 1;
            for (i = 0; i < arr_size; i++)
            {
                std::cout << "\"" << o->arr_string[i].data << "\", ";
            }
            std::cout << "\"" << o->arr_string[i].data << "\"";
            break;

        case TYPE_STRUCT:
            arr_size = o->arr_size - 1;
            for (i = 0; i < arr_size; i++)
            {
                std::cout << "\n";
                print_var(&o->struct_data[i], 1);
                std::cout << ",\n";
            }
            print_var(&o->struct_data[i], 1);
            break;

        default:
            break;
        }
        std::cout << " ]\n";
    }else if (o->type == TYPE_STRUCT)
    {
        //std::cout << "not yet coded :p"; exit(9);
        int64_t limit = o->struct_count-1;
        int64_t i;

        if (o->arr_size == 0)
        {
            std::cout << "{ }";
            return;
        }else

        std::cout << "{" << std::endl;

        for (i = 0; i < limit; i++)
        {
            //std::cout << space << "jnuhbygtvfcr";
            print_var(&o->struct_data[i], offset+1);
            std::cout << ", " <<std::endl;
        }
        print_var(&o->struct_data[i], offset+1);
        std::cout << std::endl << space << "}";
        
    }
    else
    {
        
        switch (o->type)
        {
        case TYPE_INT:
            std::cout << o->int_data;
            break;

        case TYPE_FLOAT:
            std::cout << o->float_data;
            break;

        case TYPE_BOOL:
            if (o->bool_data)
            {
                std::cout << "true";
            }else
            {
                std::cout << "false";
            }
            break;

        case TYPE_STRING:
            if (o->string_length)
            {
                std::cout << "\""<< o->string_data << "\"";
            }else
            {
                std::cout << "(NULL)";
            }
            break;
        
        default:
            std::cout << "(NULL)";
            break;
        }
        return;
    }
}

void var::print()
{
    print_var(this, 0);
    return;
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
        file.write((char*)&this->arr_size, 8);
        switch (this->type ^ TYPE_ARRAY)
        {
        case TYPE_INT:
            for (size_t i = 0; i < this->arr_size; i++)
            {
                file.write((char*)&this->arr_int[i], 8);
            }
            break;
        
        case TYPE_FLOAT:
            for (size_t i = 0; i < this->arr_size; i++)
            {
                file.write((char*)&this->arr_float[i], 8);
            }
            break;

        case TYPE_BOOL:
            for (size_t i = 0; i < this->arr_size; i++)
            {
                file.write((char*)&this->arr_bool[i], 1);
            }
            break;

        case TYPE_STRING:
            for (size_t i = 0; i < this->arr_size; i++)
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

void var::copy(var& data) {
    this->copy(&data);
}

void var::copy(var* data) {
    this->info1 = data->info1;
    this->info2 = data->info2;
    this->info3 = data->info3;
    this->type =  data->type;

    if (this->type & TYPE_ARRAY)
    {
        this->arr_size = data->arr_size;
        this->arr_capacity = data->arr_capacity;

        switch (type ^ TYPE_ARRAY)
        {
        case TYPE_STRING:
            this->arr_string = (struct block*)malloc(sizeof(struct block) * arr_capacity);
            for (size_t i = 0; i < arr_size; i++)
            {
                this->arr_string[i].data = _strdup(data->arr_string[i].data);
                this->arr_string[i].length = data->arr_string[i].length;
            }
            break;

        case TYPE_INT:
            this->arr_int = (int64_t*)malloc(sizeof(int64_t) * arr_capacity);
            memcpy((void*)this->arr_int, (void*)this->arr_int, sizeof(int64_t) * arr_capacity);
            break;

        case TYPE_FLOAT:
            this->arr_float = (double*)malloc(sizeof(double) * arr_capacity);
            memcpy((void*)this->arr_float, (void*)this->arr_float, sizeof(double) * arr_capacity);
            break;

        case TYPE_STRUCT:
            this->arr_struct = (var*)malloc(sizeof(var) * arr_capacity); std::cout << "jnucbuebc"; exit(-1);
            memset((void*)this->arr_struct, 1, sizeof(var) * arr_capacity);
            break;

        case TYPE_BOOL:
            this->arr_bool = (bool*)malloc(sizeof(bool) * arr_capacity);
            memset((void*)this->arr_bool, 1, sizeof(bool) * arr_capacity);
            break;

        default:
            std::cerr << "Unregistered type (" << get_datatype(data->type) << ")\n";
            exit(-1);
            break;
        }
    }
    else if (this->type == TYPE_STRUCT)
    {
        this->struct_count = data->struct_count;
        this->struct_data = (var*)malloc(sizeof(var) * struct_count);

        for (size_t i = 0; i < struct_count; i++)
        {
            this->struct_data[i].copy(data->struct_data[i]);
            this->struct_data[i].name = nullptr;
            this->struct_data[i].rename(data->struct_data[i].name);
        }
    }
    else
    {
        if (this->type == TYPE_STRING)
        {
            this->string_data = _strdup(data->string_data);
            this->string_length = data->string_length;
        }
        else if (this->type == TYPE_BUFFER)
        {
            
        }
        else
        {
            this->data1 = data->data1;
        }
    }
}

void var::rename(const char* name){

    if (this->name)
    {
        delete this->name;
    }

    if (name)
    {
        this->name = _strdup(name);
    }else
    {
        this->name = nullptr;
    }
    
}

// Array
int var::arr_write(int index, variant data)
{
    if (!(this->type & TYPE_ARRAY))
    {
        std::cerr << this->name << " is not an array but " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    if (this->arr_size-1 < index)
    {
        std::cerr << this->name << " got an overflow with " << this->arr_size << " to " << index << std::endl;
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

int var::arr_write(int index, var& data)
{
    if (!(this->type & TYPE_ARRAY))
    {
        std::cerr << this->name << " is not an array but " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    if ((this->type ^ TYPE_ARRAY) != data.type)
    {
        std::cerr << "Expected " << get_datatype(this->type) << " but given " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    if (this->arr_size-1 < index)
    {
        std::cerr << this->name << " got an overflow with the size of " << this->arr_size << " to index " << index << std::endl;
        exit(-1);
    }
    
    switch (this->type ^ TYPE_ARRAY)
    {
    case TYPE_BOOL:
        this->arr_bool[index] = data.bool_data;
        break;

    case TYPE_INT: //printf("ptr = %p", this->block[0].data1);
        this->arr_int[index] = data.int_data;
        break;

    case TYPE_FLOAT:
        this->arr_float[index] = data.float_data;
        break;
    
    case TYPE_STRING: //std::cout << index;
        this->arr_string[index].length = data.string_length;
        this->arr_string[index].data = _strdup(data.string_data);
        break;
        
    default:
        break;
    }
    
    
    return 0;
}

void var::arr_push(var& data) {

    if (!(this->type & TYPE_ARRAY))
    {
        std::cerr << this->name << " is not an array but " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    if ((this->type ^ TYPE_ARRAY) != data.type)
    {
        std::cerr << "Expected " << get_datatype(this->type) << " but given " << get_datatype(this->type) << std::endl;
        exit(-1);
    }

    if ((this->arr_size + 1) > this->arr_capacity)
    {

    }
}

void var::arr_array(int64_t count = 1)
{
    if (count <= 0)
    {
        std::cerr << "Invalid array size\n";
        exit(-1);
    }

    int type = this->type;
    variant data1;
    variant data2;
    variant data3;
    var* var_temp{};

    this->type |= TYPE_ARRAY;
    switch (type)
    {
    case TYPE_STRING:
        data1.str = this->string_data;
        data2.i = this->string_length;

        this->rename(nullptr);
        *this = var(this->name, TYPE_ARRAY | TYPE_STRING, count);

        this->arr_string[0].data = data1.str;
        this->arr_string[0].length = data1.i;
        break;

    case TYPE_STRUCT:
        data1.i = this->struct_count;
        data2.str = this->struct_type;
        data3.var = this->struct_data;

        this->rename(nullptr);
        *this = var(this->name, TYPE_ARRAY | TYPE_STRUCT, count);

        for (size_t i = 0; i < count; i++)
        {
            
        }
        

        break;
    
    default:
        break;
    }
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
        for (size_t i = 0; i < this->arr_size; i++)
        {
            if (num[i] == data.i)
            {
                return i;
            }
        }
        break;
    
    case TYPE_STRING:
        for (size_t i = 0; i < this->arr_size; i++)
        {
            if ( strcmp(data.str, arr_string[i].data2.str) == 0 )
            {
                return i;
            }
        }
        break;

    case TYPE_BOOL:
        bo = &this->_data.b;
        for (size_t i = 0; i < this->arr_size; i++)
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

// Buffer
int var::buf_do(void* data, int64_t len, int flag)
{
    if (!(this->type == TYPE_BUFFER))
    {
        std::cerr << this->name << " is not an buffer" << std::endl;
        exit(-1);
    }

    bool is_user_mem = false;
    bool is_holding_mem = false;

    if (this->buf_info[0] == 'M')
    {
        is_holding_mem = true;
        if ( ( (uint16_t*)&this->buf_info[1] )[0] == 0x4D4D)
        {
            is_user_mem = true;
        }
    }

    switch (flag)
    {
    case BUFFER_DO_WRITE:
        if (!is_user_mem)
        {
            return BUFFER_ERROR_NOPERMISSION;
        }
        if (!buf_number)
        {
            free(buf_data);
        }
        buf_number = len;
        buf_data = malloc(len);
        memcpy(buf_data, data, len);
        break;

    case BUFFER_DO_APPEND:
        if (!is_user_mem)
        {
            return BUFFER_ERROR_NOPERMISSION;
        }
        buf_number += len;
        buf_data = realloc(buf_data, buf_number);
        memcpy(buf_data, data, len);
        break;

    case BUFFER_DO_READ:
        if (!is_user_mem)
        {
            return BUFFER_ERROR_NOPERMISSION;
        }
        memcpy(data, buf_data, buf_number);
        break;
    
    case BUFFER_DO_DESTROY:
        if (is_holding_mem)
        {
            free(buf_data);
        }else
        {
            return BUFFER_ERROR_DELETINGPOINTER;
        }
        break;
    default:
        break;
    }
    

    
    return BUFFER_ERROR_NONE;
}

// Structure
int var::struct_write(const char* member, variant data)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not a structure" << std::endl;
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

int var::struct_write(const char* member, int64_t index, variant data)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not a structure" << std::endl;
        exit(-1);
    }

    var* pos = this->struct_find(member);

    if ( !pos )
    {
        std::cerr << this->name << " doesn't have " << member << std::endl;
        exit(-1);
    }

    if (!(pos->type & TYPE_ARRAY))
    {
        std::cerr << "Writing " << pos->name << " but is not an array" << std::endl;
        exit(-1);
    }else
    {
        return pos->arr_write(index, data);
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

int64_t var::struct_find_index(const char* member)
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
    {
        if ( sen_comp(temp[i].name, member) )
        {
            return i;
        }
    }
    int stop;
    return -1;
}

var* var::struct_create(const char* member, uint8_t type)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    if (this->struct_count == 0)
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

    pos = var(member, type);
    return &pos;
}

var* var::struct_create(const char* member, uint8_t type, int64_t count)
{
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    if (this->struct_count == 0)
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

    pos = var(member, type, count);
    return &pos;
}

var* var::struct_create(var& data){
    return this->struct_create(&data);
}

var* var::struct_create(var* data) {
    if (!(this->type == TYPE_STRUCT))
    {
        std::cerr << this->name << " is not an structure" << std::endl;
        exit(-1);
    }

    if (this->struct_count == 0)
    {
        this->struct_data = (var*)malloc(sizeof(var));
        //printf("allloc pos = %p, ", pos); pos = this->struct_data;
    }
    else
    {
        this->struct_data = (var*)realloc(data3.ptr, (sizeof(var) * (this->struct_count + 1)));
        //printf("realloc pos = %p, ", pos); pos = &( this->struct_data[this->struct_count] );
    }
    var* pos = &this->struct_data[struct_count];
    pos->name = nullptr;

    this->struct_count++;
    pos->copy(data);

    return pos;
}

var& var::operator[](int64_t index)
{
    var data;
    variant value;
    if (this->type & TYPE_ARRAY)
    {
        std::cerr << "Not for array\n";
        exit(-1);
        if (this->arr_size-1 < index)
        {
            std::cerr << this->name << " is overflowing at index " << index << " while the count is " << this->arr_size << std::endl;
            exit(-1);
        }
        
        data = var(this->type ^ TYPE_ARRAY);

        switch (type ^ TYPE_ARRAY)
        {
        case TYPE_STRING:
            value.str = this->arr_string[index].data;
            break;

        case TYPE_INT:
            value.i = this->arr_int[index];
            break;

        case TYPE_FLOAT:
            data.float_data = this->arr_float[index];
            break;

        case TYPE_STRUCT:
            data.struct_data = &this->arr_struct[index];
            break;

        case TYPE_BOOL:
            data.bool_data = this->arr_bool[index];
            break;

        default:
            std::cerr << "Unregistered type";
            exit(-1);
            break;
        }
        data.write(value);
        return data;

    }else if (this->type == TYPE_STRUCT)
    {
        if (this->struct_count-1 < index)
        {
            std::cerr << this->name << " is overflowing at index " << index << " while the count is " << this->arr_size << std::endl;
            exit(-1);
        }

        return this->struct_data[index];
    }
    

    return data;
}

var* var::struct_pos(int64_t index){
    return &this->struct_data[index];
}