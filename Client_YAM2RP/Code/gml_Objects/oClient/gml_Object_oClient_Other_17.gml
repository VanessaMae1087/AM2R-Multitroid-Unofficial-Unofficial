var buffer9 = multi_setup_buffer();
buffer_write(buffer9, buffer_u8, 34);
buffer_write(buffer9, buffer_u8, global.saxmode);
multi_send_buffer();
