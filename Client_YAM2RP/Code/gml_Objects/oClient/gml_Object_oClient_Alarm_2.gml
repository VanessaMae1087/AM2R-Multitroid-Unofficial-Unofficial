if (global.monstersleftPrev != global.monstersleft)
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 4);
    buffer_write(buffer, buffer_s8, global.monstersleft);
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
    metroidCountChanged = 1;
}
if (global.monstersareaPrev != global.monstersarea)
{
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 5);
    buffer_write(buffer, buffer_s8, global.monstersarea);
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
    metroidCountChanged = 1;
}
if (!metroidCountChanged)
    alarm[2] = 10
if metroidCountChanged
{
    metroidCountChanged = 0
    alarm[2] = 75
}
