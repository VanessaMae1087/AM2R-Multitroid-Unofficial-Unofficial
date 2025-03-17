if (!absorb)
{
    relativeX = lerp(relativeX, 0, 0.03)
    relativeY = lerp(relativeY, 0, 0.03)
    x = oCharacter.x + relativeX
    y = oCharacter.y - oCharacter.sprite_height / 2 + relativeY
}
if absorb
{
    if (statetime == 0)
    {
        with (oFXTrail)
        {
            if (sprite_index == sScrewSpark)
                visible = false
        }
        image_xscale = 1
        image_xscale = 1
        with (oCharacter)
            sfx_stop(sndCoreXIdle)
    }
    x = oCharacter.x + relativeX
    y = oCharacter.y - oCharacter.sprite_height / 2 + relativeY
    relativeX = lerp(relativeX, 0, 0.1)
    relativeY = lerp(relativeY, 0, 0.1)
    if (image_xscale > 0)
    {
        image_xscale -= 0.0225
        image_yscale -= 0.0225
    }
    if (image_xscale <= 0)
    {
        if (room == rm_a2a04)
        {
        }
        else
            Unmute_Loops()
        with (oCharacter)
            speedmultiresettimer = 0
        global.enablecontrol = 1
        if (global.item[itemtype] == 0)
        {
            global.item[itemtype] = 1
            switch itemtype
            {
                case 0:
                    global.bomb = 1
                    break
                case 2:
                    global.spiderball = 1
                    break
                case 3:
                    global.jumpball = 1
                    break
                case 4:
                    global.hijump = 1
                    break
                case 5:
                    if (global.currentsuit == 0)
                        global.currentsuit = 1
                    break
                case 6:
                    global.spacejump = 1
                    break
                case 7:
                    global.speedbooster = 1
                    break
                case 8:
                    global.screwattack = 1
                    break
                case 9:
                    global.currentsuit = 2
                    break
                case 10:
                    global.cbeam = 1
                    break
                case 11:
                    global.ibeam = 1
                    break
                case 12:
                    global.wbeam = 1
                    break
                case 13:
                    global.sbeam = 1
                    break
                case 14:
                    global.pbeam = 1
                    break
            }

        }
        with (instance_find(oFXTrail, (instance_number(oFXTrail) - 1)))
        {
            if (sprite_index == sScrewSpark)
            {
                visible = true
                sprite_index = sScrewAttack
                image_index = other.screwattackpickupframe
                image_alpha = 1
                image_angle = other.screwattackpickupangle
                image_blend = c_white
                image_xscale = 1
                image_yscale = 1
            }
        }
        instance_destroy()
    }
}
statetime++
