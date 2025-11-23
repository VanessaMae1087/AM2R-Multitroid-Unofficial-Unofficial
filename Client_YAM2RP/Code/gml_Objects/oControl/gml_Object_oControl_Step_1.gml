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

if (global.event[308] > 0 && !instance_exists(oClient) && global.ingame)
{
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
