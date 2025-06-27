var match, i, arr, arrID;
if instance_exists(oServer)
{
    if (ds_list_size(oServer.idList) > 0)
    {
        match = 0
        for (i = 0; i < ds_list_size(oServer.idList); i++)
        {
            if (!(is_undefined(ds_list_find_value(oServer.idList, i))))
            {
                arr = ds_list_find_value(oServer.idList, i)
                arrID = arr[0, 0]
                if (arrID == ID)
                    match = 1
            }
        }
        if (!match)
            instance_destroy()
    }
    else
        instance_destroy()
    for (i = 0; i < ds_list_size(oServer.idList); i++)
    {
        if (!(is_undefined(ds_list_find_value(oServer.idList, i))))
        {
            arr = ds_list_find_value(oServer.idList, i)
            arrID = arr[0, 0]
            if (arrID == ID)
                y = (207 + ((i + 1) * 30))
        }
    }
}
else
    instance_destroy()
