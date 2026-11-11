if (global.spectator)
{
    exit;
}
var buffer4 = multi_setup_buffer();
buffer_write(buffer4, buffer_u8, 105);
buffer_write(buffer4, buffer_u8, global.otherID);
multi_send_buffer();
