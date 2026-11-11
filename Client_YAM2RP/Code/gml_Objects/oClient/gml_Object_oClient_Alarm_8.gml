if (global.maxmissilesPrev != global.maxmissiles && (!is_on_menu()) && ((!global.spectator) || global.sax))
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 11);
    buffer_write(buffer, buffer_u16, global.maxmissiles);
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
    maxmissilesChanged = 1;
}
if (!maxmissilesChanged)
    alarm[8] = 10
if maxmissilesChanged
{
    maxmissilesChanged = 0
    alarm[8] = 75
}
