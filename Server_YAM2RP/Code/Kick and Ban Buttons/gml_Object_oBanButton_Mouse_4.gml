if (global.Page || global.syncpage)
    exit;

if (IP == "127.0.0.1")
{
    show_message_async("This client is connected locally! Banning them could cause issues.#This is usually because the client is on the same computer as the server, or a service like Ngrok is being used.#If you need to ban your localhost IP for some reason, manually add it to the blacklist file at:#" + environment_get_variable("localappdata") + "\blacklist.txt");
    exit;
}

if (instance_exists(oServer))
{
    var findID = ds_list_find_index(oServer.banList, IP);
    
    if (findID < 0)
        ds_list_add(oServer.banList, IP);
    
    if (file_exists(working_directory + "\blacklist.txt"))
        file_delete(working_directory + "\blacklist.txt");
    
    blacklist = file_text_open_write(working_directory + "\blacklist.txt");
    
    for (var i = 0; i < ds_list_size(oServer.banList); i++)
    {
        file_text_write_string(blacklist, string(ds_list_find_value(oServer.banList, i)));
        
        if (i != ds_list_size(oServer.banList))
            file_text_writeln(blacklist);
    }
    
    file_text_close(blacklist);
}
