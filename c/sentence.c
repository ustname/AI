#include "sentence.h"
#include "variable.h"

/*
int sen_open(SEN* sen, char* str)
{
    if (sen == 0 || str == 0)
    {
        return -2;
    }
    
    char *strptr;
    char *tempstr = strdup(str);
    if (tempstr[0] == ' ')
    {
        tempstr = strtok_r(tempstr, " ", &strptr);
    }
    
    if (!strncmp(strptr, "from", 4))
    {
        
    }
    else if (/* condition )
    {
        /* code 
    }
    else
    {
        /* code 
    }
    

}
*/
/*
int sen_close(SEN* sen)
{
    if(sen->args != 0)
    {
        free(sen->args);
        free(sen->sen);
    }
    
    return 0;
}


int sen_free(SEN* sen)
{
    sen_close(sen);
    
    free(sen);
    return 0;
}
*/

SEN* sen_alloc()
{
    SEN* sen = malloc(sizeof(SEN));
    sen->flags = 0;
    sen->args = 0;
    sen->args = NULL;
    sen->length = 0;
    sen->src = 0;
    return sen;
}

char* sen_end(char* src)
{
    return src + strlen(src);
}

int sen_comp(char* dst, char* src)
{
    int srclen = strlen(src);

    for (int i = 0; i < srclen; i++)
    {
        if (dst[i] != src[i]) return 1;
    }
    return 0;
}

char* sen_stop(char* src, char* tok, int64_t len)
{
    int64_t toklen = 0;
    if (src == 0 || tok == 0)
    {
        return 0;
    }

    toklen = strlen(tok);

    if (len == 0)
    {
        len = strlen(src);
    }
    
    for (int64_t i = 0; i < len; i++)
    {
        for (int j = 0; j < toklen; j++)
        {
            if (src[i] == tok[j])
                return &src[i];
        }
    }

    return 0;
}

char* sen_skip(char* src, char* tok, int64_t len)
{
    int64_t toklen = 0;
    if (src == 0 || tok == 0)
    {
        return 0;
    }
    
    toklen = strlen(tok);

    if (len == 0)
    {
        len = strlen(src);
    }
    
    for (int64_t i = 0; i < len; i++)
    {
        
        for (int j = 0; j < toklen; j++)
        {
            if (src[i] == tok[j]) goto sen_skip_loop;
        }
        return &src[i];
        sen_skip_loop:
    }

    return 0;
}

char* sen_find(char* src, char* tok, int64_t len)
{
    int64_t toklen = 0;
    if (src == 0 || tok == 0)
    {
        return 0;
    }
    
    toklen = strlen(tok);
    if (len == 0)
    {
        len = strlen(src) + 1;
    }
    len -= toklen;
    
    for (int64_t i = 0; i < len; i++)
    {
        if ( strncmp(&src[i], tok, toklen) == 0 ) return &src[i];
    }

    return 0;
}

int sen_pick(char* src, char* tokend, char* buf , int64_t len)
{
    if (src == 0 || buf == 0)
    {
        return -1;
    }

    if (tokend == 0)
    {
        tokend = " ";
    }

    if (len == 0)
    {
        len = strlen(src);
    }
    
    char* start = sen_skip(src, " \n\t", 0);
    len -= (int64_t)(start - src); 
    if (len < 0) 
    {
        buf[0] = '\0';
        return 2;
    }
    char* end = sen_stop(start, tokend, len); //printf("no error %s", end);
    if (end == 0)
    {
        strncpy(buf, start, len);
        buf[len] = 0;
        return 1;
    }
    
    int64_t pos = (int64_t)(end-start);

    strncpy(buf, start, pos);
    buf[pos] = 0;

    return 0;
}