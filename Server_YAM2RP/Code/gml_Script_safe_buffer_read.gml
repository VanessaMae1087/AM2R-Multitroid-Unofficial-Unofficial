var buffer, type, currentPos, bufferSize, newPos, client_id, i, arrList;
buffer = argument0
type = argument1
currentPos = buffer_tell(buffer)
bufferSize = buffer_get_size(buffer)
newPos = currentPos + buffer_sizeof(type)
if (newPos > bufferSize)
{
    for (i = 0; i < ds_list_size(idList); i++)
    {
        arrList = ds_list_find_value(idList, i)
        if (ds_map_find_value(async_load, "ip") == arrList[0, 3])
            client_id = arrList[0, 0]
    }
    if (ds_list_find_index(kickList, client_id) == -1)
        ds_list_add(kickList, client_id)
    global.bufferOverflow = 1
    return 0;
}
return buffer_read(buffer, type);
