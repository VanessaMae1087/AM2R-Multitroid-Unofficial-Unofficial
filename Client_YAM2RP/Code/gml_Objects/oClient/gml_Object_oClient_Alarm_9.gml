if (global.maxsmissilesPrev != global.maxsmissiles && (!is_on_menu()) && ((!global.spectator) || global.sax))
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 12);
    buffer_write(buffer, buffer_u8, global.maxsmissiles);
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
    maxsmissilesChanged = 1;
}
if (!maxsmissilesChanged)
    alarm[9] = 10
if maxsmissilesChanged
{
    maxsmissilesChanged = 0
    alarm[9] = 75
}
