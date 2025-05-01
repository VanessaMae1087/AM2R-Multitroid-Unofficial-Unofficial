if (global.Page || global.syncpage)
    exit
if instance_exists(oServer)
{
    with (oServer)
    {
        if (!(file_exists(working_directory + "\blacklist.txt")))
        {
            blacklist = file_text_open_write(working_directory + "\blacklist.txt")
            file_text_close(blacklist)
        }
        else
        {
            ds_list_clear(banList)
            blacklist = file_text_open_read(working_directory + "\blacklist.txt")
            while (!file_text_eof(blacklist))
            {
                ds_list_add(banList, file_text_read_string(blacklist))
                file_text_readln(blacklist)
            }
        }
    }
    alarm[0] = 120
}
