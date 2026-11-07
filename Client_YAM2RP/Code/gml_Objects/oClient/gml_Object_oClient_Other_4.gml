var size, type, alignment, bufferSize, result;
if (room == rm_credits)
{
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = global.buffer;
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 19)
    buffer_write(buffer, buffer_s32, global.gametime)
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 19)
    buffer_write(buffer, buffer_s32, global.gametime)
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
}
if (room == rm_score)
    resetTimer = 5
