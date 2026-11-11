var v, f;
v = 0
f = 0
while (f < array_length_1d(global.event))
{
    if (f > 350)
        break
    else
    {
        if (f == 102)
            global.eventPrev[f] = global.event[f]
        if (global.eventPrev[f] != global.event[f])
        {
            global.eventChanges[v, 0] = global.event[f]
            global.eventChanges[v, 1] = f
            ds_list_set(global.onlineEvent, 0, global.eventChanges)
            eventChanged = 1
            v++
        }
        f++
        continue
    }
}
if (eventChanged && !is_on_menu() && (!global.spectator || global.sax))
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 8);
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineEvent)));
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
}
if (!eventChanged)
    alarm[5] = 10
if eventChanged
{
    eventChanged = 0
    alarm[5] = 75
}
