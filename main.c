
#include "variable.h"
#include "sentence.h"
#define DATAP(X) &(V_DATA){.byte64 = X}
#include <limits.h>

int main()
{
    //var_init(10);
    
    char* w = "  World";
    char* buf;
    //memset(buf, 0, 100);
    //sen_pick(w, 0, buf);
    buf = sen_end(w) - 1;
    printf("%c ", *buf);
    printf("done");
    return 0;
}