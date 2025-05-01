var findID, i;
if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    findID = ds_list_find_index(oServer.banList, IP)
    if (findID < 0)
        ds_list_add(oServer.banList, IP)
    if file_exists(working_directory + "\blacklist.txt")
        file_delete(working_directory + "\blacklist.txt")
    blacklist = file_text_open_write(working_directory + "\blacklist.txt")
    for (i = 0; i < ds_list_size(oServer.banList); i++)
    {
        file_text_write_string(blacklist, string(ds_list_find_value(oServer.banList, i)))
        if (i != ds_list_size(oServer.banList))
            file_text_writeln(blacklist)
    }
    file_text_close(blacklist)
}
