if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    oServer.syncedELM = (!oServer.syncedELM)
    oServer.alarm[0] = 1
}
