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

char* sen_stop(char* src, char* tok, uint64_t len)
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

char* sen_skip(char* src, char* tok, uint64_t len)
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

char* sen_find(char* src, char* tok, uint64_t len)
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
        if (strncmp(&src[i], tok, toklen) == 0) return &src[i];
    }

    return 0;
}