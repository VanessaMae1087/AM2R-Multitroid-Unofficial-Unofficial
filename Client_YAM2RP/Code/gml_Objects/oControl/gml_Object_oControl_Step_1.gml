if (init)
    exit;

if ((os_type == os_android || os_type == os_linux) && global.joydetected == 0)
{
    for (var i = 0; i < gamepad_get_device_count(); i++)
    {
        if (gamepad_is_connected(i))
        {
            for (var ia = 0; ia < gamepad_button_count(i); ia++)
            {
                if (gamepad_button_check(i, ia))
                {
                    global.opjoyid = i;
                    global.joydetected = 1;
                }
            }
            
            for (var ia = 0; ia < gamepad_axis_count(i); ia++)
            {
                if (gamepad_axis_value(i, ia) != 0)
                {
                    global.opjoyid = i;
                    global.joydetected = 1;
                }
            }
        }
    }
}

if (widescreen)
{
    widescreen_space = 106;
}
else
{
    widescreen_space = 0;
    view_visible[1] = false;
}

if (global.saxmode)
    global.grayMap = 1;
else
    global.grayMap = 0;

if (global.event[308] > 0 && room != rm_credits)
{
    if (global.winningTeam == 0 && !is_on_menu() && handleGameEnd)
    {
        if (gameEndTimer == 5)
        {
            if (instance_exists(oCharacter))
            {
                with (oCharacter)
                {
                    facing = 0;
                    
                    if (global.currentsuit == 0)
                        sprite_index = scr_suit_sprites(822, 1157);
                    
                    if (global.currentsuit == 1)
                        sprite_index = scr_suit_sprites(1029, 1157);
                    
                    if (global.currentsuit == 2)
                        sprite_index = scr_suit_sprites(848, 1157);
                    
                    global.enablecontrol = 0;
                    canbehit = 0;
                    oControl.displaygui = 0;
                    xVel = 0;
                    yVel = 0;
                    xAcc = 0;
                    yAcc = 0;
                }
            }
            popup_text_ext("Ship reached", 120);
        }

        if (gameEndTimer == 120)
        {
            oControl.displaygui = 0;
            global.enablecontrol = 0;
            
            if (instance_exists(oCharacter))
            {
                with (oCharacter)
                {
                    xVel = 0;
                    yVel = 0;
                    xAcc = 0;
                    yAcc = 0;
                }
            }
        }

        if (gameEndTimer == 420)
        {
            instance_create(0, 0, oFinalFadeout);
            mus_fadeout(292);
            global.enablecontrol = 0;
            
            if (instance_exists(oCharacter))
            {
                with (oCharacter)
                {
                    xVel = 0;
                    yVel = 0;
                    xAcc = 0;
                    yAcc = 0;
                }
            }
        }

        gameEndTimer++;
    }

    if (global.winningTeam == 1 || is_on_menu() || gameEndTimer == 760)
    {
        global.endingGametime = global.gametime;
        global.endingItemstaken = global.itemstaken;
        global.event[308] = 0;
        remove_persistent_objects();
        sfx_stop_all();
        global.vibL = 0;
        global.vibR = 0;
        global.ingame = 0;
        global.darkness = 0;
        global.gotolog = -1;
        global.enablecontrol = 1;
        global.transitiontype = 0;
        oControl.displaygui = 1;
        room_goto(rm_credits);
        mus_stop_all();
        mus_play_once(293);
    }
}
