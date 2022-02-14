

class bin_data
{
private:
    void* data = nullptr;
    uint64_t avalaible = 0;
    uint64_t used = 0;
public:
    bin_data()
    {
        uint64_t num = 1000;
        data = malloc(num);
        avalaible = num;
        used = 0;
    }

    int write(void* bin, uint64_t len)
    {
        if ( len > (avalaible - used) )
        {
            data = realloc(data, avalaible + 1000);
            avalaible += 1000;
        }
        
        memcpy(data + used, bin, len);
        return 0;
    }

    void* end()
    {
        return data = realloc(data, used);
    }
  
};
