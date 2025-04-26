var findIDDead;
if global.Page
    exit
if instance_exists(oServer)
{
    findIDDead = ds_list_find_index(oServer.deadList, ID)
    if (findIDDead >= 0)
    {
        ds_list_delete(oServer.deadList, findIDDead)
        global.reviveSocket = socket
        with (oServer)
            event_user(5)
    }
}
