if (global.Page || global.syncpage)
    exit;

if (instance_exists(oServer))
{
    var findKickID = ds_list_find_index(oServer.kickList, ID);
    
    if (findKickID < 0)
    {
        ds_list_add(oServer.kickList, ID)
        global.kickReason = 0
    }
}
