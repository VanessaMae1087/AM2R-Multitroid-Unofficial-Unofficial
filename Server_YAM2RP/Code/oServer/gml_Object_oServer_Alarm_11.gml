var samCount = ds_list_size(samusList) - ds_list_size(deadList);

if (global.event[308] > 0)
    samCount = 0;

var sockets = ds_list_size(playerList);
buffer_delete(buffer);
buffer = buffer_create(1024, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_s32, 0);
buffer_write(buffer, buffer_u8, 113);
buffer_write(buffer, buffer_s32, global.gametime);
buffer_write(buffer, buffer_u8, global.saxmode);
buffer_write(buffer, buffer_u8, global.lobbyLocked);
buffer_write(buffer, buffer_u8, samCount);
buffer_write(buffer, buffer_string, string(global.damageMult));
buffer_write(buffer, buffer_u8, global.shortcuts);
buffer_write(buffer, buffer_u8, global.juggActive);
buffer_write(buffer, buffer_u8, global.MetCount);
buffer_write(buffer, buffer_u8, global.exp_gradualetanks);
buffer_poke(buffer, 0, buffer_s32, buffer_tell(buffer) - 4);

for (var i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer));

alarm[11] = 30;
