if (!global.saxmode || global.spectator)
{
    exit;
}
var buffer10 = multi_setup_buffer();
buffer_write(buffer10, buffer_u8, 35);
buffer_write(buffer10, buffer_s16, global.mapposx);
buffer_write(buffer10, buffer_s16, global.mapposy);
multi_send_buffer();
