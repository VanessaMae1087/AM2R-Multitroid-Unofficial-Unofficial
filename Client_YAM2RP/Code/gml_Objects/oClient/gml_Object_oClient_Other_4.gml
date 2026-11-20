if (room == rm_credits)
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 19);
    buffer_write(buffer, buffer_s32, global.gametime);
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
}
if (room == rm_score)
    resetTimer = 5;
