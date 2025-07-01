var spid = -1;

if (global.item[itemid] == 1 && (!collected))
{
    collected = 1
    alarm[1] = 1
}
if ((!global.spectator) && alarm[0] == -1)
    active = 1
if (((object_index == oItemBomb || object_index == oItemSpiderBall || object_index == oItemJumpBall || object_index == oItemHijump || object_index == oItemVaria || object_index == oItemSpaceJump || object_index == oItemSpeedBooster || object_index == oItemScrewAttack || object_index == oItemGravity || object_index == oItemIBeam || object_index == oItemWBeam || object_index == oItemSBeam || object_index == oItemPBeam || object_index == oItemCBeam) && global.sax && global.saxmode) || global.spectator)
    active = 0

if (global.sax && global.saxmode && itemid <= 14)
{
    spid = asset_get_index(string_insert("Unknown", sprite_get_name(sprite_index), 6))
    if (spid > -1)
        sprite_index = spid
}
