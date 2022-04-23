#include "_time.hpp"

void my::time::start()
{
    this->start_time = std::chrono::high_resolution_clock::now();
}

double my::time::now()
{
    return (std::chrono::high_resolution_clock::now() - this->start_time).count();
}

my::time::time()
{
    this->start();
}