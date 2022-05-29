
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
    std::string str = read_file("C:\\Users\\HP\\Documents\\pro\\AI\\cpp\\2\\program.txt");

    var rect("Rect", TYPE_STRUCT);
    rect.struct_create("x", TYPE_INT)->write(v);
    rect.struct_create("y", TYPE_FLOAT)->write(v);
    bsi::push_class(rect);
    bsi::read(parent[4], (char*)str.data());
    
    /*var temp("Halima", TYPE_STRING);
    temp.arr_array(0);
    v.str = (char*)"Dustin mencintai mu";
    temp.arr_push(v);
    temp.print();*/
    int number = 0;
}