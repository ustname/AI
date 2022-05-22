
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
    variant v;
    v.i = 9;
    //char* s = "int num = 1000 + (9 / 5) * 8"; //printf("top(%p) ", s);
    var& parent = *bsi::init(); //printf(" [%p] ", parent);
    var* ENUM;
    (ENUM = parent.struct_find("enum"))->struct_create("true", TYPE_BOOL)->write(v); v.b = 7;
    parent.struct_find("enum")->struct_create("false", TYPE_BOOL)->write(v);
    var ret_int("Rect", TYPE_STRUCT); 
    ret_int.struct_create("x", TYPE_INT)->write(v);
    ret_int.struct_create("y", TYPE_INT)->write(v);
    bsi::push_class(ret_int);
    std::string str = read_file("C:\\Users\\HP\\Documents\\pro\\AI\\cpp\\2\\program.txt");
    var* temp = new var("lol", &ret_int, 20);
    temp->print();
    temp->clear();
    temp->print();
    sen::string word("987");
    word.writei_at(89, 1);
    word.writei_at(89, 3);
    int number = 0;
}