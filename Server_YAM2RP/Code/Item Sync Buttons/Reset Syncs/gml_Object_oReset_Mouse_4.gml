if (instance_exists(oServer) && (!global.syncpage))
{
    with (oServer)
        event_user(0)
    alarm[0] = 120
    if (alarm[10] > 0)
        alarm[10] = -1
}
