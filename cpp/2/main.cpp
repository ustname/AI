
#include "bsi.hpp"

extern int read_value(char* str, var& v);

int main()
{
    char* s = "float num = x * 7 \n\n num = num * 9.8"; //printf("top(%p) ", s);
    var parent("parent", TYPE_STRUCT); //printf(" [%p] ", parent);printf(" [%p] ", parent);
    parent.struct_create("x", TYPE_INT)->write(QQi(9));
    bsi::read(parent, s);
    parent["num"]->print();
    int number = 0;
    //parent.clear();
    //parent = var("parent", TYPE_STRUCT);
    //parent.struct_create("a", TYPE_INT);
    //parent.struct_write("a", QQi(9));
    //parent["a"]->print();
    //bsi::read(&parent, s);
    //std::cout << parent.data3.var[0].name;
    //print_len(s, name_len(s));
    
    //s += stop_at(s, " ");
    //std::cout << s;
}