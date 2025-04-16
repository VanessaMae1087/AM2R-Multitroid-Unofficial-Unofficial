var type, _port, size, alignment, import, slotStr;
banList = ds_list_create()
kickList = ds_list_create()
randomize()
strict_init("dictionary.json")
canChange = 1
type = buffer_fixed
if (!(file_exists(working_directory + "\settings.ini")))
{
    ini_open(working_directory + "\settings.ini")
    ini_write_real("Settings", "port", 64198)
    ini_write_real("Settings", "maxplayers", 16)
    ini_write_string("Settings", "moderatorpass", string(random_get_seed()))
    ini_close()
}
ini_open(working_directory + "\settings.ini")
port = ini_read_real("Settings", "port", 64198)
maxClients = ini_read_real("Settings", "maxplayers", 16)
password = ini_read_string("Settings", "moderatorpass", string(random_get_seed()))
global.saxmode = ini_read_real("Settings", "StartingMode", 0)
ini_close()
load_config()
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
if (maxClients > 16)
    maxClients = 16
server = network_create_server(type, port, maxClients)
_port = 64199
webpanel = network_create_server_raw(type, _port, 2)
size = 1024
type = buffer_grow
alignment = 1
buffer = buffer_create(size, type, alignment)
socketList = ds_list_create()
playerList = ds_list_create()
idList = ds_list_create()
timeList = ds_list_create()
resetList = ds_list_create()
samusList = ds_list_create()
saxList = ds_list_create()
deadList = ds_list_create()
vars = ds_grid_create(3, 20)
map = ds_map_create()
posMap = ds_map_create()
teamAffiliation = ds_map_create()
import = json_import("item_dict.json")
dict = json_decode(import)
queenHealth = 600
queenPhase = 0
queenState = 0
prevPlayerListSize = ds_list_size(playerList)
alarm[0] = 90
alarm[1] = 90
alarm[2] = 300
alarm[3] = 360
alarm[4] = 420
alarm[5] = 3600
alarm[9] = 60
alarm[10] = 600
alarm[11] = 60
reset_globals()
global.slot = 1
slotStr = string(global.slot)
global.saveString = "\save" + slotStr + ".txt"
syncedELM = 0
posMapModified = 0
global.lobbyLocked = 0
global.damageMult = 0
global.clientVersion = "V1.8.1"
global.prevMonstersLeft = 0
global.gametime = 0
global.gametDec = 0
global.doomenabled = 0
global.doomstarted = 0
global.juggActive = 0
global.Page = 0
global.timeSincePaused = 0
