var findIDSamus, findIDSAX;
if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    findIDSamus = ds_list_find_index(oServer.samusList, ID)
    if (findIDSamus >= 0)
        team = 1
    findIDSAX = ds_list_find_index(oServer.saxList, ID)
    if (findIDSAX >= 0)
        team = 2
    if (team == 1)
    {
        team = 2
        ds_list_delete(oServer.samusList, findIDSamus)
        ds_list_add(oServer.saxList, ID)
        global.newTeam = team
        global.newTeamSocket = socket
        with (oServer)
            event_user(3)
    }
    else if (team == 2)
    {
        team = 1
        ds_list_delete(oServer.saxList, findIDSAX)
        ds_list_add(oServer.samusList, ID)
        global.newTeam = team
        global.newTeamSocket = socket
        with (oServer)
            event_user(3)
    }
}
