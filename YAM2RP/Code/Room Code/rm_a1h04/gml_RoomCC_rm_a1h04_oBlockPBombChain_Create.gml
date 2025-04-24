var blockcc, i;
if (instance_exists(oClient) && global.saxmode)
{
    with (instance_create((x + 16), (y - 32), oSolid1))
        image_yscale = 2
    with (instance_create((x + 64), (y - 32), oSolid1))
        image_yscale = 2
    blockcc[0] = instance_create((x + 32), (y - 16), oBlockPBombChain)
    blockcc[1] = instance_create((x + 48), (y - 16), oBlockPBombChain)
    blockcc[2] = instance_create((x + 48), y, oBlockPBombChain)
    blockcc[3] = instance_create((x + 32), y, oBlockPBombChain)
    if global.event[176]
    {
        for (i = 0; i < array_length_1d(blockcc); i++)
        {
            with (blockcc[i])
                event_user(0)
        }
    }
}
else
    image_xscale = 2
