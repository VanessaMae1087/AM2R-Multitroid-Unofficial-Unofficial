if (global.Page || global.syncpage)
    exit
global.lobbyLocked = (!global.lobbyLocked)
if global.lobbyLocked
{
    global.timeSincePaused = 0
    if (global.doomtime >= 0)
    {
        if (!global.doomstarted)
            global.gametime = global.doomtime * 60 * 60
        global.doomenabled = 1
        global.doomstarted = 1
    }
    else
    {
        global.doomenabled = 0
        global.gametime = 0
    }
}
