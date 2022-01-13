#include "../var.hpp"


int _write(al::var* var, int64_t prop_index, uint64_t length, DATA data, uint8_t type, uint32_t write_flags)
{
    if(prop_index < 0)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    
    al::prop* prop_dst = &var->prop[prop_index];
    
    if(prop_index > var->prop.size()) ///   Write new prop
    {
        if (var->prop.size() == 0)
        {
            var->prop.resize(1);
        }
        else
        {
            //printf("init exit");
            var->prop.resize(var->prop.size() + 1);
        }
        //var->prop = Prop;printf("%i ", var->prop_num);//exit(0);
        prop_dst = &var->prop.back(); //printf("prop_dst %p ", prop_dst); 
        
        prop_dst->name = strdup(prop_name);
        prop_dst->length = 0;
        prop_dst->type = VOID0;
        prop_dst->flags = PROP_FLAG_USED;
    }

    if (prop_dst->length != length)
    {//printf("prop %p\n", prop_dst); exit(0);
        free(prop_dst->data.vp);
        prop_dst->length = 0;
    }
    
    switch (write_flags)
    {
    case MEMALLOC:
        prop_dst->data.vp = malloc(length);
        memset(prop_dst->data.vp, 0, length); std::cout << prop_dst->data.vp;
        prop_dst->length = length;
        break;
    
    case MEMCOPY:
        if (length != 0)
        {
            prop_dst->data.vp = malloc(length);
            memcpy(prop_dst->data.vp, data.vp, length);
            prop_dst->length = length;
        }else
        {
            prop_dst->data = data;
        }
        break;

    case MEMPOINTER:

    default:
        prop_dst->data = data;
    }
    prop_dst->type = type;
    var->version++;
    
    return 0;
}

int write(al::var* var, int64_t prop_index, char* data)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    DATA v; 
    v.cp = data; //std::cout << this->name << " jnuhbygv ";
    int ret = _write(this, prop_name, strlen(data)+1, v, CHARP, MEMCOPY);
    
    return ret;
}

int write(al::var* var, int64_t prop_index, int64_t data)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    DATA v;
    v.i = data;
    int ret = _write(this, prop_name, 0, v, SI64, MEMPOINTER);
    
    return ret;
}

int write(al::var* var, int64_t prop_index, uint8_t type, uint64_t num)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    uint64_t length = 0;
    switch (type)
    {
    case TYPE_VAR:
        length = num * sizeof(al::var); //std::cout << length << ", " << num;
        break;

    default:
        length = num;
        break;
    }

    DATA v;
    v.i = 0;
    int ret = _write(this, prop_name, length, v, type, MEMALLOC);
    
    return ret;
}

int write(al::var* var, int64_t prop_index, void* data, uint64_t len)
{
    if(prop_name == NULL)
    {
        return -1;//(prop->name == 0) || (prop->data.byte64 == 0) || (prop->length == 0)
    }
    DATA v;
    v.vp = data;
    int ret = 0;
    
    if (len == 0)
    {
        ret = _write(this, prop_name, len, v, VOIDP, MEMPOINTER);
    }else
    {
        ret = _write(this, prop_name, len, v, VOIDP, MEMCOPY);
    }
    

    return ret;
}


union DATAREAD
{
    void* vp;
    int8_t  d8;
    int16_t d16;
    int32_t d32;
    int64_t d64;
};


uint8_t *gdata;

static DATAREAD read(int num)
{
    //static uint8_t *data = data;
    DATAREAD ret;
    switch (num)
    {
    case 1:
        ret = {.d8 = *(int8_t*)gdata};
        gdata += 1;
        return ret;
        break;

    case 2:
        ret = {.d16 = *(int16_t*)gdata};
        gdata += 2;
        return ret;
        break;

    case 4:
        ret = {.d32 = *(int32_t*)gdata};
        gdata += 4;
        return ret;
        break;

    case 8:
        ret = {.d64 = *(int64_t*)gdata};
        gdata += 8;
        return ret;
        break;
    
    default:
        break;
    }
    
}

int fci_read(void* data)
{
    gdata = (uint8_t*)data;

    int ret = 1;
    al::var* var = nullptr;
    al::prop* prop = nullptr;
    DATAREAD temp = {};
    DATAREAD temp2 = {};
    int code = 0;
    do
    {

        switch (ret)
        {
        case 00:
            ret = 0;
            break;

        case 01:
            var = (al::var*)read(8).vp;
            break;

        case 02:
            prop = (al::prop*)read(8).vp;
            break;

        case 03:
            code = read(1).d64;
            switch (code)
            {
            case 01:
                temp.vp = read(8).vp;
                var = new al::var((char*)temp.vp);
                break;
            
            case 02:
                temp.vp = read(8).vp;
                temp2.d64 = read(8).d64;
                var = new al::var((char*)temp.vp, temp2.d64);
                break;

            default:
                std::cerr << "Unknown instrucion" << code << std::endl;
                break;
            }
            break;

        case 04:
            code = read(1).d64;
            switch (code)
            {
            case 01:
                temp.d32 = read(1).d32;
                _write(var, temp.d32, )
                break;
            
            default:
                break;
            }

        default:
            break;
        }

    }while (ret);
    
    
}