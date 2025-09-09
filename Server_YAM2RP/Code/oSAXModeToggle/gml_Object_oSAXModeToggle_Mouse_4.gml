if (global.Page || global.syncpage)
    exit;

if (instance_exists(oServer))
{
    save_config();
    global.saxmode = !global.saxmode;
    ini_open(working_directory + "\settings.ini");
    ini_write_real("Settings", "StartingMode", global.saxmode);
    ini_close();
    load_config();
    
    with (oServer)
        event_user(4);
}
else
{
    global.saxmode = 0;
}
