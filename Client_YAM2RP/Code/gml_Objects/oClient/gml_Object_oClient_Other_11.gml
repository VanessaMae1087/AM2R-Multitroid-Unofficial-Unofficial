var buffer3 = multi_setup_buffer();
buffer_write(buffer3, buffer_u8, 30);
buffer_write(buffer3, buffer_u8, elm);
multi_send_buffer();
