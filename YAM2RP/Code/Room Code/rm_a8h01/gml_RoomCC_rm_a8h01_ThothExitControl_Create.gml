if (instance_exists(oClient) && global.saxmode)
{
    with (instance_create((x + 64), (y + 16), oSolid1))
        image_yscale = 2
    with (instance_create((x + 112), (y + 16), oSolid1))
        image_yscale = 2
}
else
    image_xscale = 2
