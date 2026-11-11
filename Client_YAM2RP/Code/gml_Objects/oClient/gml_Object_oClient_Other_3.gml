if (connected)
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 254);
    buffer_write(buffer, buffer_u8, global.clientID);
    buffer_write(buffer, buffer_u8, global.sax);
    multi_send_buffer();
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
