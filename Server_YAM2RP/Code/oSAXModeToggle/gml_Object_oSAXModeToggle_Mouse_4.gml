if (global.Page || global.syncpage)
    exit;

if (instance_exists(oServer))
{
    if (global.saxmode)
        ini_open(working_directory + "\settings_sax.ini");
    else
        ini_open(working_directory + "\settings_coop.ini");
    
    ini_write_real("Settings", "HealthSync", global.healthSync);
    ini_write_real("Settings", "AmmoSync", global.ammoSync);
    ini_write_real("Settings", "CollectedItemSync", global.itemSync);
    ini_write_real("Settings", "ItemToggleSync", global.itemToggleSync);
    ini_write_real("Settings", "MetroidSync", global.metroidSync);
    ini_write_real("Settings", "EventSync", global.eventSync);
    ini_write_real("Settings", "MapSync", global.mapSync);
    ini_write_real("Settings", "PlayerMapLocationSync", global.mapPlayerIconSync);
    ini_write_real("Settings", "SAXModeShortcuts", global.shortcuts);
    ini_write_real("Settings", "StartingDoomsdayTime", global.doomtime);
    ini_write_real("Settings", "MetroidsToA6", global.MetCount);
    ini_write_real("Settings", "RandomizerMode", global.rando);
    ini_write_real("Settings", "Difficulty", oServer.syncedDifficulty);
    ini_write_real("Settings", "ExtremeLabMetroids", oServer.syncedELM);
    ini_write_real("ExperimentalSettings", "RollbackHits", global.exp_rollbackhits);
    ini_write_real("ExperimentalSettings", "GradualETanks", global.exp_gradualetanks);
    ini_close();
    ini_open(working_directory + "\settings.ini");
    ini_write_real("Settings", "StartingMode", global.saxmode);
    ini_close();
    global.saxmode = !global.saxmode;
    load_config();
    
    with (oServer)
        event_user(4);
}
else
{
    global.saxmode = 0;
}
