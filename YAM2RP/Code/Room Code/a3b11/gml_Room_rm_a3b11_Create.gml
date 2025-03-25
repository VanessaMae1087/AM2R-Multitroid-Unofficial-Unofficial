global.mapoffsetx = 65
global.mapoffsety = 27
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 5
global.darkness = 4
SoundFX_Preset(1)
mus_change(musArea3B)
if (oControl.mod_previous_room == 397)
{
    with (oBlockSpeed)
    {
        visible = true
        event_user(1)
    }
}
