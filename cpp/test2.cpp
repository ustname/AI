#include <iostream>

class c
{
    public :
    const int static count = 0;
    int num = 1;
    
    ~c()
    {
        this->destroy();
    }
    void destroy()
    {
        std::cout << "destroyed\n";
    }
};

int c operator +(int number)
{

}

int main()
{
    
    c* m = new c[10];
    //m[9].destroy();
    delete m, 10;
}