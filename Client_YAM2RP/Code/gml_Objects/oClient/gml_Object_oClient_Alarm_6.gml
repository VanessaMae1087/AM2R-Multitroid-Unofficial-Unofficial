var v, i, f;
v = 0
if global.ingame
{
    for (i = 0; i < array_height_2d(global.dmap); i++)
    {
        f = 0
        while (f < array_length_2d(global.dmap, i))
        {
            if (global.dmapPrev[i, f] != global.dmap[i, f])
            {
                mapChanged = 1
                break
            }
            else
            {
                f++
                continue
            }
        }
    }
}
if (mapChanged && (!is_on_menu()) && ((!global.spectator) || global.sax))
{
    var tileCount = 0;
    var buffer = multi_setup_buffer();
    buffer_write(buffer, buffer_u8, 9);
    var savedPos = buffer_tell(buffer);
    buffer_write(buffer, buffer_u16, tileCount); // this will get overwritten
    for (var i = 0; i < array_height_2d(global.dmap); i++)
    {
        for (var f = 0; f < array_length_2d(global.dmap, i); f++)
        {
            if (global.dmapPrev[i, f] != global.dmap[i, f])
            {
                buffer_write(buffer, buffer_u8, i);
                buffer_write(buffer, buffer_u8, f);
                buffer_write(buffer, buffer_u8, global.dmap[i, f]);
                tileCount++;
            }
        }
    }
    buffer_poke(buffer, savedPos, buffer_u16, tileCount);
    buffer_write(buffer, buffer_u8, global.clientID);
    multi_send_buffer();
}
if (!mapChanged)
    alarm[6] = 10
if mapChanged
{
    mapChanged = 0
    alarm[6] = 75
}
