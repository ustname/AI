#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//char* strskip(char*, char*, int);

char* skip(char* s)
{
    while (*s < 'A')
    {
        s++;
    }
    return s;
}

int getcoma(char* s)
{
    int i = 0;
    while(*s != ',')
    {
       i++;
    }
    return i;
}


int funtion(char* str)
{
    char* s = str;
    int len = strlen(str);
    int pos = 0;
    int run = 1;
    while (run)
    {
        s = skip(s);

    }
    
}

int main()
{
    char* string = "Hello, World, again";
    char* ptr, *last;
    //int res = 
    //string;
    //sscanf(string + strlen(ptr)+1, " %[a-zA-Z]", ptr);
    //
    
    //funtion(string);
    ptr = getcoma(string);

}
