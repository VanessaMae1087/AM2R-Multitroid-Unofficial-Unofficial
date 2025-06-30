var sockets, size, type, alignment, bufferSize, i, getGravity, freezeOff;
sockets = ds_list_size(playerList)
buffer_delete(buffer)
size = 1024
type = buffer_grow
alignment = 1
buffer = buffer_create(size, type, alignment)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_u8, 29)
buffer_write(buffer, buffer_u8, syncedDifficulty)
bufferSize = buffer_tell(buffer)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_s32, bufferSize)
buffer_write(buffer, buffer_u8, 29)
buffer_write(buffer, buffer_u8, syncedDifficulty)
for (i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer))
buffer_delete(buffer)
size = 1024
type = buffer_grow
alignment = 1
buffer = buffer_create(size, type, alignment)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_u8, 30)
buffer_write(buffer, buffer_u8, syncedELM)
bufferSize = buffer_tell(buffer)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_s32, bufferSize)
buffer_write(buffer, buffer_u8, 30)
buffer_write(buffer, buffer_u8, syncedELM)
for (i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer))
    
    
// sync gravity: (global.itemSamus[9] && global.itemsyncs[2])
freezeOff = 0
if global.itemSamus[5]
    freezeOff = 1
buffer_delete(buffer)
size = 1024
type = buffer_grow
alignment = 1
buffer = buffer_create(size, type, alignment)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_s32, 0) // buffer size
buffer_write(buffer, buffer_u8, 115) // packet ID
buffer_write(buffer, buffer_u8, freezeOff)

buffer_write(buffer, buffer_u8, (global.itemSamus[0] && global.itemsyncs[11] == 0)) // bombs
buffer_write(buffer, buffer_u8, (global.itemSamus[1] && false)) // power grip
buffer_write(buffer, buffer_u8, (global.itemSamus[2] && global.itemsyncs[9] == 0)) // spider ball
buffer_write(buffer, buffer_u8, (global.itemSamus[3] && global.itemsyncs[10] == 0)) // spring ball
buffer_write(buffer, buffer_u8, (global.itemSamus[4] && global.itemsyncs[14] == 0)) // hi jump boots
buffer_write(buffer, buffer_u8, (global.itemSamus[5] && global.itemsyncs[1] == 0)) // varia suit
buffer_write(buffer, buffer_u8, (global.itemSamus[6] && global.itemsyncs[15] == 0)) // space jump
buffer_write(buffer, buffer_u8, (global.itemSamus[7] && global.itemsyncs[16] == 0)) // speed booster
buffer_write(buffer, buffer_u8, (global.itemSamus[8] && global.itemsyncs[13] == 0)) // screw attack
buffer_write(buffer, buffer_u8, (global.itemSamus[9] && global.itemsyncs[2] == 0)) // gravity suit
buffer_write(buffer, buffer_u8, (global.itemSamus[10] && global.itemsyncs[3] == 0)) // charge beam
buffer_write(buffer, buffer_u8, (global.itemSamus[11] && global.itemsyncs[7] == 0)) // ice beam
buffer_write(buffer, buffer_u8, (global.itemSamus[12] && global.itemsyncs[4] == 0)) // wave beam
buffer_write(buffer, buffer_u8, (global.itemSamus[13] && global.itemsyncs[5] == 0)) // spazer beam
buffer_write(buffer, buffer_u8, (global.itemSamus[14] && global.itemsyncs[6] == 0)) // plasma beam

buffer_poke(buffer, 0, buffer_s32, buffer_tell(buffer) - 4)

for (i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer))
    
    
    
buffer_delete(buffer)
size = 1024
type = buffer_grow
alignment = 1
buffer = buffer_create(size, type, alignment)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_u8, 116)
buffer_write(buffer, buffer_string, sha1_string_unicode(password))
bufferSize = buffer_tell(buffer)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_s32, bufferSize)
buffer_write(buffer, buffer_u8, 116)
buffer_write(buffer, buffer_string, sha1_string_unicode(password))
for (i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer))
alarm[0] = 90
