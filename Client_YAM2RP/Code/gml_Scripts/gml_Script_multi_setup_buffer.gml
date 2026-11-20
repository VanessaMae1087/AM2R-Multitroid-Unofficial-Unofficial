// seems like GML doesn't have a function to check if a buffer exists, so i assume it exists and has the values we want
buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_s32, 0); // placeholder for the buffer size; gets filled in by the send script
return global.buffer;
