var buffer, type, currentPos, bufferSize, newPos, ip;
buffer = argument0
type = argument1
currentPos = buffer_tell(buffer)
bufferSize = buffer_get_size(buffer)
newPos = currentPos + buffer_sizeof(type)
if (newPos > bufferSize)
{
    ip = ds_map_find_value(async_load, "ip")
    if (ds_list_find_index(kickList, ip) == -1)
        ds_list_add(kickList, ip)
    global.bufferOverflow = 1
    return 0;
}
return buffer_read(buffer, type);
