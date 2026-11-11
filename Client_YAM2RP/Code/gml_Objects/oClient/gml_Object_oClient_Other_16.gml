var buffer8 = multi_setup_buffer();
buffer_write(buffer8, buffer_u8, 33);
buffer_write(buffer8, buffer_u8, global.lobbyLocked);
multi_send_buffer();
