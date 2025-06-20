if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    oServer.syncedDifficulty++
    if (oServer.syncedDifficulty > 3)
        oServer.syncedDifficulty = 0
    oServer.alarm[0] = 1
}
