
#include "variable.h"
#include "sentence.h"
#define DATAP(X) &(V_DATA){.byte64 = X}

int main()
{
    var_init(10);
    VAR* lol = var_create("apple", 0); //printf("write", lol); exit(0);
    PROP p = {"properties", 0, 64, 0, PROP_CODE_CLEANAFTERWRITE};
    V_DATA data = {0};
    var_write(lol, "properties", 0, DATAP(45), UI64); //
    //p = (PROP){"properties", 0, 30, 0, PROP_CODE_CLEANAFTERWRITE};
    //var_writeprop(lol, &p);
    PROP* ptr = var_findprop(lol, "properties"); 
    printf("%s with data = %llu\n", ptr->name, ptr->data.byte64);
    //printf("%llu, %llu, %llu ", buffer.cp, lol[0].prop->data.byte64, lol[0].prop->data.vd);
    

    printf("done");
    return 0;
}