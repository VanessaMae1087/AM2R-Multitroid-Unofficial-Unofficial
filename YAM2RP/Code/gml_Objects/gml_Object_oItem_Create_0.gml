alarm[0] = 30
image_speed = 0.2
active = 0
btn1_name = ""
btn2_name = ""
itemtype = 0
itemid = 0
text1 = ""
text2 = ""
collected = 0
serris = 0
if ((object_index == oItemBomb || object_index == oItemSpiderBall || object_index == oItemJumpBall || object_index == oItemHijump || object_index == oItemVaria || object_index == oItemSpaceJump || object_index == oItemSpeedBooster || object_index == oItemScrewAttack || object_index == oItemGravity || object_index == oItemIBeam || object_index == oItemWBeam || object_index == oItemSBeam || object_index == oItemPBeam) && global.sax && global.saxmode)
{
    alarm[0] = -1
    active = 0
    image_alpha = 0.25
}
