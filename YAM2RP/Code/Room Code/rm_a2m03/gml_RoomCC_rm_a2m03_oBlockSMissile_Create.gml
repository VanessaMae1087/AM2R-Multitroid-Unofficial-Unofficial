if (instance_exists(oClient) && global.experimental)
{
    if (!((oControl.mod_previous_room == 403 && global.stanks == 0)))
    {
        instance_create(x, (y + 16), oBlockSMissile)
        instance_create(x, (y + 32), oBlockSMissile)
        instance_create(x, (y + 48), oBlockSMissile)
    }
    instance_destroy()
}
