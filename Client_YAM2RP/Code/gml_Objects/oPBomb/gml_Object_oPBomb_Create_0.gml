var size, type, alignment, bufferSize, result;
image_speed = 0.25
alarm[0] = 60
alarm[1] = 30
sfx_play(sndPBombSet)
special = 0
if instance_exists(oClient)
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        var pbombBuffer = multi_setup_buffer();
        buffer_write(pbombBuffer, buffer_u8, 24);
        buffer_write(pbombBuffer, buffer_u8, global.clientID);
        buffer_write(pbombBuffer, buffer_s16, x);
        buffer_write(pbombBuffer, buffer_s16, y);
        buffer_write(pbombBuffer, buffer_u8, global.sax);
        multi_send_buffer();
    }
}
