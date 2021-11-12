
#include "variable.h"
#include "sentence.h"
#define DATAP(X) &(V_DATA){.byte64 = X}

int main()
{
    //var_init(10);
    
    char* w = "  8  Hello World";
    int pos = sen_skip(w, " 8", 0) - (uint64_t)w;
    printf("%s ", &w[pos]);
    printf("done");
    return 0;
}