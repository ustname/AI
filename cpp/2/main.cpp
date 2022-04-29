
#include "include/bsi.hpp"


std::ostream& operator<<(std::ostream& stream, void* data)
{
    printf("%p", data);
    return stream;
}

static std::string read_file(const char* filename)
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
    //char* s = "int num = 1000 + (9 / 5) * 8"; //printf("top(%p) ", s);
    var parent("parent", TYPE_STRUCT); //printf(" [%p] ", parent);
    parent.struct_create("x", TYPE_INT | TYPE_ARRAY, 10);
    parent.struct_write("x", 0, QQi(9));
    parent.struct_create("amongus", TYPE_INT | TYPE_ARRAY, 0);
    parent.struct_create("son", TYPE_STRUCT);
    var* ENUM;
    (ENUM = parent.struct_create("enum", TYPE_STRUCT))->struct_create("true", TYPE_BOOL)->write(QQi(1));
    parent.struct_find("enum")->struct_create("false", TYPE_BOOL)->write(QQi(0));
    //parent.struct_create("y", TYPE_FLOAT)->write(QQf(9.987));
    std::string str = read_file("C:\\Users\\HP\\Documents\\pro\\AI\\cpp\\2\\program.txt");
    //std::cout << (int)str[str.length()];exit(-1);
    //std::cout << str.data() << "} " << str.length() << std::endl;
    bsi::read(parent, (char*)str.data());
    //parent.str_write(9, QQi(9));printf(" 678 ", &parent);
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