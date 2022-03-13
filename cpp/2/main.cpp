
#include "bsi.hpp"

extern int read_value(char* str, var& v);

int main()
{
    //char* s = "int World \"lol\" <= = 1.0911 angka";
    //bsi::read(0, s);
    var parent("parent", TYPE_STRUCT);
    parent.clear();
    parent = var("parent", TYPE_STRUCT);
    parent.struct_create("a", TYPE_INT);
    parent.struct_write("a", QQi(9));
    parent["a"]->print();
    //bsi::read(&parent, s);
    //std::cout << parent.data3.var[0].name;
    //print_len(s, name_len(s));
    
    //s += stop_at(s, " ");
    //std::cout << s;
}