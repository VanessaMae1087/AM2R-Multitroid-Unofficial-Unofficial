var maximum, sockets, change, bfr, bfrSize, i;
// if we don't have the sync page open, ignore mouse clicks
if (!global.syncpage)
    exit

// loop 8 times to update the minor item count
for (i = 0; i < 8; i++)
{
    if (values[i] < 0) // if it shouldn't change, iterate the loop without updating the value
        continue
    global.startingminors[i] = values[i]
}

// update all clients on the current synced item status
sockets = ds_list_size(oServer.playerList)
bfr = buffer_create(1024, buffer_grow, 1)
buffer_seek(bfr, buffer_seek_start, 0)
buffer_write(bfr, buffer_s32, 18) // placeholder for buffer size
buffer_write(bfr, buffer_u8, 61) // packet ID
buffer_write(bfr, buffer_u8, global.itemsyncs[0]) // suits
buffer_write(bfr, buffer_u8, global.itemsyncs[1])
buffer_write(bfr, buffer_u8, global.itemsyncs[2])
buffer_write(bfr, buffer_u8, global.itemsyncs[3]) // beams
buffer_write(bfr, buffer_u8, global.itemsyncs[4])
buffer_write(bfr, buffer_u8, global.itemsyncs[5])
buffer_write(bfr, buffer_u8, global.itemsyncs[6])
buffer_write(bfr, buffer_u8, global.itemsyncs[7])
buffer_write(bfr, buffer_u8, global.itemsyncs[8]) // misc
buffer_write(bfr, buffer_u8, global.itemsyncs[9])
buffer_write(bfr, buffer_u8, global.itemsyncs[10])
buffer_write(bfr, buffer_u8, global.itemsyncs[11])
buffer_write(bfr, buffer_u8, global.itemsyncs[12])
buffer_write(bfr, buffer_u8, global.itemsyncs[13])
buffer_write(bfr, buffer_u8, global.itemsyncs[14]) // boots
buffer_write(bfr, buffer_u8, global.itemsyncs[15])
buffer_write(bfr, buffer_u8, global.itemsyncs[16])
buffer_write(bfr, buffer_u8, global.startingminors[0]) // fusion: energy tanks
buffer_write(bfr, buffer_u8, global.startingminors[1]) // sa-x: energy tanks
buffer_write(bfr, buffer_u8, global.startingminors[2]) // missiles
buffer_write(bfr, buffer_u8, global.startingminors[3])
buffer_write(bfr, buffer_u8, global.startingminors[4]) // super missiles
buffer_write(bfr, buffer_u8, global.startingminors[5])
buffer_write(bfr, buffer_u8, global.startingminors[6]) // power bombs
buffer_write(bfr, buffer_u8, global.startingminors[7])
buffer_poke(bfr, 0, buffer_s32, (buffer_tell(bfr) - 4))
// send the sync info to all clients
for (i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(oServer.playerList, i), bfr, buffer_tell(bfr))
buffer_delete(bfr)