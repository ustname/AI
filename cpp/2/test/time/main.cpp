#include "_time.hpp"
#include <thread>

using namespace std::literals::chrono_literals;

int main(int argc, char* argv[])
{
    std::chrono::seconds delay_time = 2s;
    
    if (argc > 1)
    {
        delay_time = std::chrono::seconds(atoll(argv[1]));
    }
    
    my::time var;
    std::this_thread::sleep_for(delay_time);
    std::cout << var.now();
}