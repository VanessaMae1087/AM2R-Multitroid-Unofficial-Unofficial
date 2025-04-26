var i, arr, arrID, arrSocket, found;
if instance_exists(oServer)
{
    if (ds_list_size(oServer.idList) > 0)
    {
        if (!instance_exists(oSAXModeButton))
        {
            for (i = 0; i < ds_list_size(oServer.idList); i++)
            {
                if (!(is_undefined(ds_list_find_value(oServer.idList, i))))
                {
                    arr = ds_list_find_value(oServer.idList, i)
                    show_debug_message(string(arr))
                    if is_array(arr)
                        show_debug_message("is array")
                    show_debug_message(string(arr[0, 0]))
                    arrID = arr[0, 0]
                    arrSocket = arr[0, 1]
                    button = instance_create(360, (207 + (i + 1) * 30), oSAXModeButton)
                    button.ID = arrID
                    button.socket = arrSocket
                }
            }
        }
        else
        {
            for (i = 0; i < ds_list_size(oServer.idList); i++)
            {
                if (!(is_undefined(ds_list_find_value(oServer.idList, i))))
                {
                    arr = ds_list_find_value(oServer.idList, i)
                    arrID = arr[0, 0]
                    arrSocket = arr[0, 1]
                    found = 0
                    with (oSAXModeButton)
                    {
                        if (arrID == ID)
                            found = 1
                    }
                    if (!found)
                    {
                        button = instance_create(360, (207 + (i + 1) * 30), oSAXModeButton)
                        button.ID = arrID
                        button.socket = arrSocket
                    }
                }
            }
        }
    }
}
if (saxmodePrev != global.saxmode)
{
    if (saxmodePrev && (!global.saxmode))
        load_config()
    saxmodePrev = global.saxmode
    if instance_exists(oServer)
    {
        with (oServer)
            event_user(0)
    }
}
