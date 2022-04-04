#include "data.hpp"

#pragma once

uint64_t stop_at(char *str, char *token)
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

char* skip_at(char* str, char* token)
{
    int i = 0;
    int num = strlen(token);

    while(str[i])
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
    return 0;
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
        }else if (str[i] >= 'A' && str[i] <= 'Z')
        {
            continue;
        }else if (str[i] >= 'a' && str[i] <= 'z')
        {
            continue;
        }else if (str[i] == '_')
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

bool sen_comp(char* str, char* prod)
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

char* strndup(char* str, uint64_t len)
{
    std::cout << "top ";
    char* data = (char*)malloc(len+1);
    
    data = (char*)memcpy(data, str, len);
    data[len] = 0;printf(" ptr(%i) = %p and %s", len, data, data);
    return data;
}

int guess_number(char* str, var& v)
{
    int i = 0;
    int type = 0;
    int64_t integers;
    double floating;

    if (str[i] == '-')
    {
        ++i;
    }

    while (str[i])
    {
        if (str[i] >= '0' && str[i] <= '9')
        {
            ++i;
            continue;
        }else if (str[i] == '.' || str[i] == 'f')
        {
            type = TYPE_FLOAT;
            break;
        }
        type = TYPE_INT;
        break;
    }

    v = var("Guessed number", type);

    if (type == TYPE_INT)
    {
        integers = atoll(str);
        v.write(QQi(integers));
    }else if(type == TYPE_FLOAT)
    {
        floating = atof(str);
        v.write(QQi(floating));
    }

    return type;
}