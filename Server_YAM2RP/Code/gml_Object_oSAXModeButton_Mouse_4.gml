var findIDSamus, findIDSAX, arr, ip, i;
if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    ip = -1
    i = 0
    while (i < ds_list_size(oServer.idList))
    {
        arr = ds_list_find_value(oServer.idList, i)
        if (ID == arr[0, 0])
        {
            ip = arr[0, 3]
            break
        }
        else
        {
            i++
            continue
        }
    }
    if (ip == -1)
        exit
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
//     TODO: name-team affiliation (post 1.9.0)
//     ds_map_replace(oServer.teamAffiliation, ip, (team - 1))
  }
