#include "sen.hpp"

char* al::sen::skip(char* token)
{
    int tokenlen = strlen(token);
    int srclen = strlen(this->str);
    char* str = this->str;

    if (!(tokenlen && srclen && str))
    {
        return 0;
    }

    for (int i = 0; i < srclen; i++)
    {
        for (int j = 0; j < tokenlen; j++)
        {
            if (str[i] == token[j]) goto sen_skip_loop;
        }
        return &str[i];
        sen_skip_loop:
    }
    return 0;
}

char* al::sen::stop(char* token)
{
    int tokenlen = strlen(token);
    int srclen = strlen(this->str);
    char* str = this->str;

    if (!(tokenlen && srclen && str))
    {
        return 0;
    }

    for (int i = 0; i < srclen; i++)
    {
        for (int j = 0; j < tokenlen; j++)
        {
            if (str[i] == token[j]) return str + i;
        }
    }
    return 0;
}
