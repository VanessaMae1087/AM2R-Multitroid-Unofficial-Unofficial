var findKickIP;
if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    findKickIP = ds_list_find_index(oServer.kickList, IP)
    if (findKickIP < 0)
        ds_list_add(oServer.kickList, IP)
}
