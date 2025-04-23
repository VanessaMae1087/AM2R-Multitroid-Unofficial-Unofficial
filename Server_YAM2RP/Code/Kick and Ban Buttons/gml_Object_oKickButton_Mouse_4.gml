var findKickID;
if global.Page
    exit
if instance_exists(oServer)
{
    findKickID = ds_list_find_index(oServer.kickList, ID)
    if (findKickID < 0)
        ds_list_add(oServer.kickList, ID)
}
