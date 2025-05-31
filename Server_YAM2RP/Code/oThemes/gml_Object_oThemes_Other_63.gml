var ID, Input;
ID = ds_map_find_value(async_load, "id")
if (ID == msg)
{
    if ds_map_find_value(async_load, "status")
    {
        input = ds_map_find_value(async_load, "value")
        if is_real(input)
        {
            ini_open(working_directory + "\preferences.ini")
            global.theme = ini_read_real("Settings", "theme", 0)
            ini_close()
            if (input != global.theme)
            {
                ini_open(working_directory + "preferences.ini")
                ini_write_real("Settings", "theme", input)
                ini_close()
            }
            global.theme = input
        }
    }
}
