#include "var.hpp"

using al::var;

int main()
{
    var mine("my var", 8);
    mine.create("halima");
    //var* second = &((var*)mine.prop[2].data.vp)[1];
    
    mine.create("indinb");
    var* myvar = mine.find("halima");
    myvar->write("lmao", 1234);
     //std::cout << "found"; exit(8);
    //printf("%u", mine.prop[0].data.i);
    std::cout << myvar->prop[0].data.i;
    //std::cout << sizeof(al::var);std::cout << ;
}