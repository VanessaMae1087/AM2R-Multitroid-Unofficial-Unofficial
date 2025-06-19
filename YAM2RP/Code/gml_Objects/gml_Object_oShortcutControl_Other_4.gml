var mtid, blk;

if global.experimental
{
    with (oBlockScrew)
        shortcutcontrol_ignore = 1
    with (oBlockSpeed)
        shortcutcontrol_ignore = 1
    with (oBlockSMissile)
        shortcutcontrol_ignore = 1
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

        case rm_a0h24:
            with (oSolid)
            {
                if (x == 192 && (176 <= y && y <= 208))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a0m03 && global.item[8] == 0))
            {
                instance_create(192, 176, oBlockScrew)
                instance_create(192, 192, oBlockScrew)
                instance_create(192, 208, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 192, 176)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 192, 192)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 192, 208)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a4h09:
            with (oSolid)
            {
                if (x == 576 && (112 <= y && y <= 144))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a0m03 && global.item[8] == 0))
            {
                instance_create(576, 112, oBlockScrew)
                instance_create(576, 128, oBlockScrew)
                instance_create(576, 144, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 576, 112)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 576, 128)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 576, 144)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a1a06:
            with (oSolid)
            {
                if (x == 272 && (592 <= y && y <= 624))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a1m02 && global.item[8] == 0))
            {
                instance_create(272, 592, oBlockScrew)
                instance_create(272, 608, oBlockScrew)
                instance_create(272, 624, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 272, 592)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 272, 608)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 272, 624)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a3a20:
            with (oSolid)
            {
                if (x == 368 && (128 <= y && y <= 176))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
                if (x == 80 && (416 <= y && y <= 448))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a3m02 && global.item[7] == 0))
            {
                instance_create(368, 128, oBlockSpeed)
                instance_create(368, 144, oBlockSpeed)
                instance_create(368, 160, oBlockSpeed)
                instance_create(368, 176, oBlockSpeed)
            }
            else
            {
                mtid = tile_layer_find(-111, 368, 128)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 368, 144)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 368, 160)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 368, 176)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }

            if (!(oControl.mod_previous_room == rm_a3m03 && global.item[8] == 0))
            {
                instance_create(80, 416, oBlockScrew)
                instance_create(80, 432, oBlockScrew)
                instance_create(80, 448, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 80, 416)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 80, 432)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 80, 448)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a2h02:
            with (oSolid)
            {
                if ((2048 <= x && x <= 2080) && (64 <= y && y <= 96))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a2m02))
            {
                instance_create(2048, 64, oBlockSpeed)
                instance_create(2064, 64, oBlockSpeed)
                instance_create(2064, 80, oBlockSpeed)
                instance_create(2064, 96, oBlockSpeed)
                instance_create(2080, 64, oBlockSpeed)
                instance_create(2080, 80, oBlockSpeed)
                instance_create(2080, 96, oBlockSpeed)
            }
            else
            {
                mtid = tile_layer_find(-111, 2048, 64)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 2064, 64)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 2064, 80)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 2064, 96)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 2080, 64)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 2080, 80)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 2080, 96)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a0h03:
            with (oSolid)
            {
                if ((448 <= x && x <= 480) && y == 432)
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            
            blk = instance_create(448, 432, oBlockSpeed)
            blk.regentime = 1
            blk.shortcutcontrol_ignore = 1
            blk = instance_create(464, 432, oBlockSpeed)
            blk.regentime = 1
            blk.shortcutcontrol_ignore = 1
            blk = instance_create(480, 432, oBlockSpeed)
            blk.regentime = 1
            blk.shortcutcontrol_ignore = 1
            break

        case rm_a2c08:
            with (oSolid)
            {
                if (x == 848 && (576 <= y && y <= 608))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a2m01 && global.item[8] == 0))
            {
                instance_create(848, 576, oBlockScrew)
                instance_create(848, 592, oBlockScrew)
                instance_create(848, 608, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 848, 576)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 848, 592)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 848, 608)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a4h03:
            with (oSolid)
            {
                if (x == 48 && (336 <= y && y <= 368))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
                if (x == 1552 && y == 560)
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a2m01 && global.item[8] == 0))
            {
                instance_create(48, 336, oBlockScrew)
                instance_create(48, 352, oBlockScrew)
                instance_create(48, 368, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 48, 336)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 48, 352)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 48, 368)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            if (!(oControl.mod_previous_room == rm_a4m01 && global.item[8] == 0))
            {
                instance_create(1552, 560, oBlockScrew)
                instance_create(1552, 576, oBlockScrew)
                instance_create(1552, 592, oBlockScrew)
                instance_create(1552, 608, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 1552, 560)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 1552, 576)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 1552, 592)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 1552, 608)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a3b02:
            with (oSolid)
            {
                if (x == 224 && (1040 <= y && y <= 1088))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a3m01 && global.item[8] == 0))
            {
                instance_create(224, 1040, oBlockScrew)
                instance_create(224, 1056, oBlockScrew)
                instance_create(224, 1072, oBlockScrew)
                instance_create(224, 1088, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 224, 1040)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 224, 1056)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 224, 1072)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 224, 1088)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a3b05:
            with (oSolid)
            {
                if (x == 112 && (832 <= y && y <= 864))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a3m01 && global.item[8] == 0))
            {
                instance_create(112, 832, oBlockScrew)
                instance_create(112, 848, oBlockScrew)
                instance_create(112, 864, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 112, 832)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 112, 848)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 112, 864)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a6b11:
            with (oSolid)
            {
                if (x == 48 && y == 48)
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            instance_create(48, 48, oBlockBomb)
            break

        case rm_a6b07:
            with (oSolid)
            {
                if (x == 0 && y == 336)
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            instance_create(0, 336, oBlockBomb)
            break

        case rm_a6a10:
            with (oSolid)
            {
                if (x == 608 && (576 <= y && y <= 608))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a6m01 && global.item[8] == 0))
            {
                instance_create(608, 576, oBlockScrew)
                instance_create(608, 592, oBlockScrew)
                instance_create(608, 608, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 608, 576)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 608, 592)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 608, 608)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a6b03:
            with (oSolid)
            {
                if (x == 240 && (352 <= y && y <= 400))
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a6m02 && global.item[8] == 0))
            {
                instance_create(240, 352, oBlockScrew)
                instance_create(240, 368, oBlockScrew)
                instance_create(240, 384, oBlockScrew)
                instance_create(240, 400, oBlockScrew)
            }
            else
            {
                mtid = tile_layer_find(-111, 240, 352)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 240, 368)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 240, 384)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 240, 400)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a2c05:
            with (oSolid)
            {
                if (x == 48 && y == 608)
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a2m03 && global.stanks == 0))
            {
                instance_create(48, 608, oBlockSMissile)
                instance_create(48, 624, oBlockSMissile)
                instance_create(48, 640, oBlockSMissile)
            }
            else
            {
                mtid = tile_layer_find(-111, 48, 608)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 48, 624)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 48, 640)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        case rm_a6b05:
            with (oSolid)
            {
                if (x == 256 && y == 96)
                {
                    tl1_delete_layer = -500
                    tl2_delete_layer = -500
                    instance_destroy()
                }
            }
            if (!(oControl.mod_previous_room == rm_a2m03 && global.stanks == 0))
            {
                instance_create(256, 96, oBlockSMissile)
                instance_create(256, 112, oBlockSMissile)
                instance_create(256, 128, oBlockSMissile)
            }
            else
            {
                mtid = tile_layer_find(-111, 256, 96)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 256, 112)
                if tile_exists(mtid)
                    tile_delete(mtid)
                mtid = tile_layer_find(-111, 256, 128)
                if tile_exists(mtid)
                    tile_delete(mtid)
            }
            break

        default:
            break
    }

    with (oBlockScrew)
    {
        if (shortcutcontrol_ignore == 0)
            regentime = -1
    }
    with (oBlockSpeed)
    {
        if (shortcutcontrol_ignore == 0)
            regentime = -1
    }
    with (oBlockSMissile)
    {
        if (shortcutcontrol_ignore == 0)
            regentime = -1
    }

}

instance_destroy()
