buffer_poke(global.buffer, 0, buffer_s32, buffer_tell(global.buffer) - 4); // update the buffer size
network_send_packet(oClient.socket, global.buffer, buffer_tell(global.buffer));
