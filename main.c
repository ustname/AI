
#include "variable.h"
#include "sentence.h"
#define DATAP(X) &(V_DATA){.byte64 = X}
#include <limits.h>

int main()
{
    //var_init(10);
    
    char* w = "  World";
    char buf[100];
    //memset(buf, 0, 100);
    //sen_pick(w, 0, buf);
    sen_pick(w, "d", buf, 1);
    printf("%s ", buf);
    printf("done");
    return 0;
}