global.mapoffsetx = 22
global.mapoffsety = 27
global.floormaterial = 1
global.waterlevel = 0
global.watertype = 0
global.objdeactivate = 0
if (global.lavastate <= 9)
{
    make_liquid(1, 184, 0, 0, 0, 0, 0)
    global.darkness = 0
}
else
{
    mus_change(musArea6A)
    tile_layer_delete(-96)
    global.darkness = 1
}
