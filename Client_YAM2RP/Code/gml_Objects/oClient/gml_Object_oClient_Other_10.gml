var buffer2 = multi_setup_buffer();
buffer_write(buffer2, buffer_u8, 29);
buffer_write(buffer2, buffer_u8, syncedDifficulty);
multi_send_buffer();
