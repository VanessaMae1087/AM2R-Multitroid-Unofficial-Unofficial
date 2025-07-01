event_inherited()
if ((global.event[176] == 1 && room == rm_a0h13) || (global.event[75] == 1 && (room == rm_a1h04 || room == rm_a8h01)))
{
    instance_destroy()
    tile_layer_delete(-111)
}
