if (instance_exists(oClient) && global.saxmode)
{
    if (!((oControl.mod_previous_room == rm_a2m03 && global.stanks == 0)))
    {
        instance_create(x, (y + 16), oBlockSMissile)
        instance_create(x, (y + 32), oBlockSMissile)
        instance_create(x, (y + 48), oBlockSMissile)
    }
    instance_destroy()
}
