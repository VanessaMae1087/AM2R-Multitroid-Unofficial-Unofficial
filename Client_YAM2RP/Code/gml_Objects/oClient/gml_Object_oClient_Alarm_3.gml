var v, f;
v = 0
for (f = 0; f < array_length_1d(global.item); f++)
{
    if (global.itemPrev[f] != global.item[f])
    {
        global.itemChanges[v, 0] = global.item[f]
        global.itemChanges[v, 1] = f
        ds_list_set(global.onlineItem, 0, global.itemChanges)
        itemChanged = 1
        v++
    }
}
if (itemChanged)
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 6);
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineItem)));
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
}
if (!itemChanged)
    alarm[3] = 10
if itemChanged
{
    itemChanged = 0
    alarm[3] = 75
}
