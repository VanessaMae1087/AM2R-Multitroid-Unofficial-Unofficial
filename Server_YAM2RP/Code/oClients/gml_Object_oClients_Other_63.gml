var ID = ds_map_find_value(async_load, "id");

if (ID == msg)
{
    if (ds_map_find_value(async_load, "status"))
    {
        var input = ds_map_find_value(async_load, "value");
        
        if (is_real(input) && input > 0)
        {
            ini_open(working_directory + "\settings.ini");
            var maxClients = ini_read_real("Settings", "maxplayers", 16);
            ini_close();
            
            if (input != maxClients)
            {
                if (instance_exists(oServer))
                {
                    with (oServer)
                        instance_destroy();
                    
                    ini_open(working_directory + "\settings.ini");
                    ini_write_real("Settings", "maxplayers", input);
                    ini_close();
                    alarm[0] = 300;
                }
            }
        }
    }
}
