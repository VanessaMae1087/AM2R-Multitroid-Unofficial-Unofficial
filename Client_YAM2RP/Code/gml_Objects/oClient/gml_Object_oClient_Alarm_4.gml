var v, f;
v = 0
for (f = 0; f < array_length_1d(global.metdead); f++)
{
    if (global.metdeadPrev[f] != global.metdead[f])
    {
        global.metdeadChanges[v, 0] = global.metdead[f]
        global.metdeadChanges[v, 1] = f
        ds_list_set(global.onlineMetdead, 0, global.metdeadChanges)
        metdeadChanged = 1
        v++
    }
}
if (metdeadChanged)
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 7);
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineMetdead)));
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
}
if (!metdeadChanged)
    alarm[4] = 10
if metdeadChanged
{
    metdeadChanged = 0
    alarm[4] = 75
}
