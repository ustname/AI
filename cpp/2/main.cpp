
#include "bsi.hpp"


static std::string read_file(char* filename)
{
    std::ifstream file(filename);
    if (!file.is_open())
    {
        /* code */
    std::cerr << "Could not open the file - '"
             << filename << "'" << std::endl;
        exit(EXIT_FAILURE);
    }
    return std::string((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
}


int main()
{
    char* s = "int num = 1000 + (9 / 5) * 8"; //printf("top(%p) ", s);
    var parent("parent", TYPE_STRUCT); //printf(" [%p] ", parent);
    //parent.struct_create("x", TYPE_INT)->write(QQi(9));
    //parent.struct_create("y", TYPE_FLOAT)->write(QQf(9.987));
    std::string str = read_file("program.txt"); 
    bsi::read(parent, str.data());printf(" [%p] ", parent);
    //parent.str_write(9, QQi(9));
    parent.print();
    //var* child = parent.dup("child");
    //child->print();
    //["name"]parent.
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