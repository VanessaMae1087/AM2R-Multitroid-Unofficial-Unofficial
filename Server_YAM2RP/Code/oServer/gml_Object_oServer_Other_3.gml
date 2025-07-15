buffer_delete(buffer);
var size = 1024;
var type = 1;
var alignment = 1;
buffer = buffer_create(size, type, alignment);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 107);
var bufferSize = buffer_tell(buffer);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_s32, bufferSize);
buffer_write(buffer, buffer_u8, 107);
var sockets = ds_list_size(playerList);

for (var i = 0; i < sockets; i++)
    network_send_packet(ds_list_find_value(playerList, i), buffer, buffer_tell(buffer));

network_destroy(server);
network_destroy(webpanel);

if (buffer_exists(buffer))
    buffer_delete(buffer);

ds_list_destroy(socketList);
ds_list_destroy(playerList);
ds_list_destroy(idList);
ds_list_destroy(timeList);
ds_list_destroy(resetList);
ds_list_destroy(banList);
ds_list_destroy(kickList);
ds_list_destroy(samusList);
ds_list_destroy(saxList);
ds_list_destroy(deadList);
ds_grid_destroy(vars);
ds_map_destroy(map);
ds_map_destroy(posMap);
// TODO: name-team affiliation (post 1.9.0)
// ds_map_destroy(teamAffiliation);

ini_open(working_directory + "\settings.ini")
ini_write_real("Settings", "StartingMode", global.saxmode)
ini_close()

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
ini_close();
