

class bin_data
{
private:
    void* data = nullptr;
    uint64_t avalaible = 0;
    uint64_t pos = 0;
public:
    bin_data()
    {
        uint64_t num = 1000;
        data = malloc(num);
        avalaible = num;
        pos = 0;
    }

    int write(void* bin, uint64_t len)
    {
        if ( len > (avalaible - pos) )
        {
            data = realloc(data, avalaible + 1000);
            avalaible += 1000;
        }
        
        memcpy(data + pos, bin, len);
        pos += len;
        return 0;
    }

    int write(int offset, void* bin, uint64_t len)
    {
        if ( len > (avalaible - offset) )
        {
            data = realloc(data, avalaible + 1000);
            avalaible += 1000;
        }
        
        memcpy(data + offset, bin, len);
        pos = offset + len;
        return 0;
    }

    int write(int64_t value, uint64_t len)
    {
        if ( len > (avalaible - this->pos) )
        {
            data = realloc(data, avalaible + 1000);
            avalaible += 1000;
        }

        int64_t bin = value;
        
        memcpy(data + pos, &bin, len);
        pos += len;
        return 0;
    }

    void dump()
    {
        uint8_t* data = (uint8_t*)this->data;
        for (size_t i = 0; i < pos; i++)
        {
            if (!(i % 16))
            {
                printf("\n");
            }else if (!(i % 8))
            {
                printf("| ");
            }
            

            printf("%02x ", data[i]);
        }
    }

    void* end()
    {
        return data = realloc(data, pos);
    }
  
};
