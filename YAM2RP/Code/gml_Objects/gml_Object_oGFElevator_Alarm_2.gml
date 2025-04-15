if (room == rm_a8h01 && oControl.mod_previous_room != 374 && global.saxmode)
{
    instance_destroy()
    exit
}
if (oCharacter.y <= y)
{
    mysolid = instance_create((x - 16), y, oSolid1)
    mysolid.image_xscale = 2
}
else if (oCharacter.state != 51 && bottom == 0)
    instance_destroy()
