var playerState;
if instance_exists(oCharacter)
    playerState = oCharacter.sball
else
    playerState = 0
var buffer = multi_setup_buffer();
buffer_write(buffer, buffer_u8, 101);
buffer_write(buffer, buffer_u8, global.clientID);
buffer_write(buffer, buffer_s16, room);
buffer_write(buffer, buffer_s16, posX);
buffer_write(buffer, buffer_s16, posY);
buffer_write(buffer, buffer_u8, global.sax);
buffer_write(buffer, buffer_u8, global.spectator);
buffer_write(buffer, buffer_u8, playerState);
buffer_write(buffer, buffer_bool, global.showHealthIndicatorsTimer > 0);
multi_send_buffer();
alarm[11] = 20
