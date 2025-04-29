var mtid;

if global.experimental
{
    switch room
    {
        case rm_a0h04d:
            with (oSolid)
            {
                if (x == 816 && (304 <= y && y <= 336))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a0m01 && global.item[8] == 0))
            {
                instance_create(816, 304, oBlockScrew)
                instance_create(816, 320, oBlockScrew)
                instance_create(816, 336, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 816, 304)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 816, 320)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 816, 336)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a2c01:
            with (oSolid)
            {
                if (x == 32 && (144 <= y && y <= 176))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a0m01 && global.item[8] == 0))
            {
                instance_create(32, 144, oBlockScrew)
                instance_create(32, 160, oBlockScrew)
                instance_create(32, 176, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 32, 144)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 32, 160)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 32, 176)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break


        case rm_a0h28:
            with (oSolid)
            {
                if (x == 240 && (416 <= y && y <= 448))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a0m02 && global.item[7] == 0))
            {
                instance_create(240, 416, oBlockSpeed)
                instance_create(240, 432, oBlockSpeed)
                instance_create(240, 448, oBlockSpeed)
            }
            else
            {
                mtid = tile_layer_find(-111, 240, 416)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 240, 432)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 240, 448)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break
        default:
            break
    }
}

instance_destroy()
