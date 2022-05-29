#include "../include/data.hpp"
#include "../include/sen.hpp"
#pragma once

uint64_t stop_at(char* str, const char* token)
{
    uint64_t i = 0;
    int num = strlen(token);
    int counter = 0;

    // while(str[i])
    //{
    //     for (int j = 0; j < num; j++)
    //     {
    //         if (str[i] != token[j])
    //         {
    //             counter = 1;
    //             goto skip_at;
    //         }
    //         break;
    //     }
    //     skip_at:
    //     i++;
    // }

    //++num;

    while (str[i])
    {
        for (int j = 0; j < num; j++)
        {
            if (str[i] == token[j])
                return i;
        }
        i++;
    }

    return i;
}

char* skip_at(char* str, const char* token)
{
    int i = 0;
    int num = strlen(token);

    while (str[i])
    {
        for (int j = 0; j < num; j++)
        {
            if (str[i] == token[j])
            {
                goto skip_at_loop;
            }
        }
        return &str[i];
    skip_at_loop:
        ++i;
    }
    return str;
}

uint64_t name_len(char* str)
{
    int i = 0;

    if (str[i] >= '0' && str[i] <= '9')
    {
        return 0;
    }
    i++;

    while (str[i++])
    {
        if (str[i] >= '0' && str[i] <= '9')
        {
            continue;
        }
        else if (str[i] >= 'A' && str[i] <= 'Z')
        {
            continue;
        }
        else if (str[i] >= 'a' && str[i] <= 'z')
        {
            continue;
        }
        else if (str[i] == '_')
        {
            continue;
        }
        return i;
    }
    return 0;
}

void print_len(char* str, uint64_t len)
{
    char format[100];
    //sscanf(format, "%%.%ds\n", len);
    printf("%.*s, %d", len, str, len);
}

int64_t sen_len(const char* str) {
    int64_t i = 0;
    while (str[i++])
    {
        str[i];
    }
    return i;
}

bool sen_comp(const char* str, const char* prod)
{
    if (prod == nullptr)
    {
        return false;
    }
    else if (str == nullptr)
    {
        return false;
    }

    int prod_len = strlen(prod);
    int str_len =  strlen(str);
    if (prod_len != str_len)
    {
        return false;
    }
    int stop;
    for (size_t i = 0; i < prod_len; i++)
    {
        if (prod[i] != str[i])
        {
            return false;
        }
    }
    return true;
}

char* strndup(const char* str, uint64_t len)
{
    //std::cout << "top ";printf(" ptr(%i) = %p and %s", len, data, data);
    char* data = (char*)malloc(len + 1);
    if (data == nullptr)
    {
        std::cerr << "Failed mem alloc" << std::endl;
        exit(-1);
    }

    data = (char*)memcpy(data, str, len);
    data[len] = 0; 
    return data;
}

sen::string::string()
{
    this->data = nullptr;
    this->size = 0;
    this->index = 0;
}

sen::string::string(const char* str)
{
    if (str != nullptr)
    {
        this->size = strlen(str);
        this->data = _strdup(str);
        this->index = this->size;
    }
    else
    {
        this->data = nullptr;
        this->size = 0;
        this->index = 0;
    }
    
}

uint64_t sen::string::operator<<(const char* str)
{
    return this->writes(str, 0);
}

uint64_t sen::string::writei(int64_t number)
{
    char buffer[1000];
    sprintf_s(buffer, "%i", number);
    return this->writes(buffer, 0);
}

uint64_t sen::string::writef(double number)
{
    char buffer[1000];
    sprintf_s(buffer, "%f", number);
    return this->writes(buffer, 0);
}

uint64_t sen::string::writes(const char* str, uint64_t length)
{
    uint64_t len;
    if (length == 0)
    {
        len = strlen(str);
    }else
    {
        len = length;
    }
    
    if (!size)
    {
        *this = sen::string(str);
    }else
    {
        if ( (index + len) > size)
        {
            size = index + len + 1;
            data = (char*)realloc(data, size);
        }
        size_t i;
        for (i = 0; i < len; i++)
        {
            data[index + i] = str[i];
        }
        data[index + i] = '\0';
        index += len;
    }
    return len;
}

uint64_t sen::string::writes_at(const char* str, uint64_t length, int64_t pos)
{
    if (pos > size)
    {
        std::cerr << "Overflowing index\n";
        exit(-1);
    }
    
    index = pos;
    this->writes(str, length);
}

uint64_t sen::string::writei_at(int64_t number, int64_t pos)
{
    char buffer[1000];
    sprintf_s(buffer, "%i", number);
    return this->writes_at(buffer, 0, pos);
}

uint64_t sen::string::writef_at(double number, int64_t pos)
{
    char buffer[1000];
    sprintf_s(buffer, "%f", number);
    return this->writes_at(buffer, 0, pos);
}

void sen::string::clear()
{
    if (size)
    {
        free(data);
        size = 0;
    }
    index = 0;
    data = nullptr;
}