
#include "variable.h"
#include "sentence.h"
#define DATAP(X) &(V_DATA){.byte64 = X}
#include <limits.h>

int main()
{
    //var_init(10);
    
    char* w = "  8  Hello World";
    char* pos = sen_find(w, "Wol", 0);
    printf("%s ", pos);
    printf("done");
    return 0;
}