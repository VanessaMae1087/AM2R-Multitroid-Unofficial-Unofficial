if (global.item[itemid] == 1 && (!collected))
{
    collected = 1
    alarm[1] = 1
}
if ((!global.spectator) && alarm[0] == -1)
    active = 1
if (((object_index == oItemBomb || object_index == oItemSpiderBall || object_index == oItemJumpBall || object_index == oItemHijump || object_index == oItemVaria || object_index == oItemSpaceJump || object_index == oItemSpeedBooster || object_index == oItemScrewAttack || object_index == oItemGravity || object_index == oItemIBeam || object_index == oItemWBeam || object_index == oItemSBeam || object_index == oItemPBeam) && global.sax && global.saxmode) || global.spectator)
    active = 0
