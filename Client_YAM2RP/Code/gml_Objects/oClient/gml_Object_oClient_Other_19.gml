var buffer11 = multi_setup_buffer();
buffer_write(buffer11, buffer_u8, 36);
buffer_write(buffer11, buffer_s8, oCharacter.mirror);
buffer_write(buffer11, buffer_s16, room);
buffer_write(buffer11, buffer_s16, global.currX);
buffer_write(buffer11, buffer_s16, global.currY);
buffer_write(buffer11, buffer_s8, global.sax);
multi_send_buffer();
