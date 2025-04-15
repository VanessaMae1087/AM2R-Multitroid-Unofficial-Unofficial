if (instance_exists(oClient) && global.saxmode)
{
    if (!((oControl.mod_previous_room == rm_a2m01 && global.item[8] == 0)))
    {
        instance_create(x, (y + 16), oBlockScrew)
        instance_create(x, (y + 32), oBlockScrew)
        instance_create(x, (y + 48), oBlockScrew)
    }
    instance_destroy()
}
