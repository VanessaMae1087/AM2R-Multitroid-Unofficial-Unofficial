var mslblock, height;
if (global.sax && global.saxmode && global.itemsyncs[7] == 0 && global.item[11] == 0)
{
    height = 0
    repeat (4)
    {
        mslblock = instance_create((x - 8), (y + height), oBlockMissile)
        mslblock.visible = true
        mslblock.regentime = -1
        height += 16
    }
    instance_destroy()
    exit
}
wall = instance_create((x - 8), y, oSolid1)
wall.image_yscale = 4
wall.depth = 10
frozen = 0
fxtimer = 0
image_speed = 0.1
alarm[0] = 60
wiggle = 0
justfrozen = 0
