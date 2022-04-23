#include "data.hpp"

#pragma once

uint64_t stop_at(char *str, const char *token);

char* skip_at(char* str, const char* token);

uint64_t name_len(char* str);

void print_len(char* str, uint64_t len);

bool sen_comp(const char* str, const char* prod);

char* strndup(const char* str, uint64_t len);

/*
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
*/