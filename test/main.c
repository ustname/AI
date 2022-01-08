#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>


void* read_file_to_bin(FILE* f)
{
    if (!f)
    {
        return 0;
    }
    uint64_t current_index = ftell(f);
    fseek(f, 0, SEEK_END);
    uint64_t length = ftell(f) - current_index; 
    fseek(f, current_index, SEEK_SET); //printf("%i", ftell(f)); exit(8);

    void* data = malloc(length);
    fread(data, 1, length, f);

    return data;
}



int main()
{
    FILE* f = fopen("mybin.bin", "rb");

    uint8_t arr[20];

    fread(arr, 1, 2, f);

    uint8_t *ptr = read_file_to_bin(f);

    for (size_t i = 0; i < 18; i++)
    {
        printf("%i, ", ptr[i]);
    }
    

    fclose(f);
}