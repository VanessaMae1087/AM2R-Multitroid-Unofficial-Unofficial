var size, type, alignment, bufferSize, result;
image_speed = 0.25
alarm[0] = 32
alarm[1] = 8
alarm[2] = 16
if instance_exists(oClient)
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        var bombBuffer = multi_setup_buffer();
        buffer_write(bombBuffer, buffer_u8, 22);
        buffer_write(bombBuffer, buffer_u8, global.clientID);
        buffer_write(bombBuffer, buffer_s16, x);
        buffer_write(bombBuffer, buffer_s16, y);
        buffer_write(bombBuffer, buffer_u8, global.sax);
        multi_send_buffer();
    }
}
