#include "variable.h"
#include <time.h>

int main()
{
    var_init(2);
    VAR* var = var_create("var", 0); //printf("- %p - ", var);

    char charnum = '0';
    int num = 0;
    //for (size_t i = 0; i < 10; i++)
    //{
    //    var_write(var, &charnum, 0, DATAQ(i), UI64); 
    //    charnum++;
    //}

    //uint64_t before = clock();
    //for (size_t i = 0; i < 1000000; i++)
    //{
    //    var_findprop(var, "9");
    //}
    //printf("%2.5f\n", ((double)(clock() - before))/CLOCKS_PER_SEC);
    
//printf("exit"); exit(9);
    var_quit();
    printf("Exit");
}