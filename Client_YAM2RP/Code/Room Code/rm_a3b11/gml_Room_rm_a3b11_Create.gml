global.mapoffsetx = 65
global.mapoffsety = 27
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 5
global.darkness = 4
global.objdeactivate = 0
SoundFX_Preset(1)
mus_change(musArea3B)
if (oControl.mod_previous_room == rm_a3m02)
{
    with (oBlockSpeed)
    {
        visible = true
        event_user(1)
    }
}
