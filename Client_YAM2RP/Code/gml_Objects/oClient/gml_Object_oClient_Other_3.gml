var size, type, alignment, bufferSize, result;
if connected
{
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = global.buffer;
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 254)
    buffer_write(buffer, buffer_u8, global.clientID)
    buffer_write(buffer, buffer_u8, global.sax)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 254)
    buffer_write(buffer, buffer_u8, global.clientID)
    buffer_write(buffer, buffer_u8, global.sax)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
}
if (!noName)
{
    network_destroy(socket)
    ds_grid_destroy(global.onlineList)
    ds_grid_destroy(global.onlineSend)
    ds_grid_destroy(global.onlineReceived)
    ds_list_destroy(global.onlineItem)
    ds_list_destroy(global.onlineMetdead)
    ds_list_destroy(global.onlineEvent)
    ds_list_destroy(roomList)
    ds_list_destroy(roomListData)
    ds_list_destroy(global.idList)
    ds_list_destroy(posData)
    ds_list_destroy(global.hatchlingList)
    ds_list_destroy(global.speedList)
    ds_list_destroy(global.screwList)
    ds_list_destroy(global.hitboxList)
    ds_list_destroy(global.otherPlayerItems)
}
