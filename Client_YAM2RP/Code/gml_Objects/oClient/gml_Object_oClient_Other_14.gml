var buffer6 = multi_setup_buffer();
buffer_write(buffer6, buffer_u8, 31);
buffer_write(buffer6, buffer_u8, global.otherAbsorbID);
buffer_write(buffer6, buffer_s16, global.otherAbsorbRelativeX);
buffer_write(buffer6, buffer_s16, global.otherAbsorbRelativeY);
buffer_write(buffer6, buffer_u8, global.otherAbsorbSpriteHeight);
multi_send_buffer();
