// NOTE: the distance check here means that if elevators are more than 5 tiles up from
// the transition you will be blocked trying to jump up the elevator shaft
if (oCharacter.y <= y || distance_to_object(oCharacter) > 80)
{
    mysolid = instance_create((x - 16), y, oSolid1)
    mysolid.image_xscale = 2
}
else if (oCharacter.state != 51 && bottom == 0)
    instance_destroy()
