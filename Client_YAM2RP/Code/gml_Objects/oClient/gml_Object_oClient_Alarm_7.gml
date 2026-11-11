if (global.itemstakenPrev != global.itemstaken && (!is_on_menu()) && ((!global.spectator) || global.sax))
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 10);
    buffer_write(buffer, buffer_u8, global.itemstaken);
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
    itemstakenChanged = 1;
}
if (!itemstakenChanged)
    alarm[7] = 10
if itemstakenChanged
{
    itemstakenChanged = 0
    alarm[7] = 75
}
