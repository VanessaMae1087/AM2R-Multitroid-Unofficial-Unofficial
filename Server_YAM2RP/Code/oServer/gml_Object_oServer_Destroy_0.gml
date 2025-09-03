buffer_delete(buffer);
var size = 1024;
var type = 1;
var alignment = 1;
buffer = buffer_create(size, type, alignment);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 107);
var bufferSize = buffer_tell(buffer);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_s32, bufferSize);
buffer_write(buffer, buffer_u8, 107);
var sockets = ds_list_size(playerList);

for (var i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer));

network_destroy(server);

if (buffer_exists(buffer))
    buffer_delete(buffer);

ds_list_destroy(socketList);
ds_list_destroy(playerList);
ds_list_destroy(idList);
ds_list_destroy(timeList);
ds_list_destroy(resetList);
ds_list_destroy(banList);
ds_list_destroy(kickList);
ds_list_destroy(samusList);
ds_list_destroy(saxList);
ds_list_destroy(deadList);
ds_grid_destroy(vars);
ds_map_destroy(map);
ds_map_destroy(posMap);
