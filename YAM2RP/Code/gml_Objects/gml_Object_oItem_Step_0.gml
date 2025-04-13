if (global.item[itemid] == 1 && (!collected))
{
    collected = 1
    alarm[1] = 1
}
if global.spectator
    active = 0
if ((!global.spectator) && alarm[0] == -1)
    active = 1
