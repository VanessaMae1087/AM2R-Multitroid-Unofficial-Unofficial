var str;
if (global.Page || global.syncpage)
    exit
ini_open(working_directory + "\settings.ini")
str = ini_read_string("Settings", "moderatorpass", "123456789")
ini_close()
msg = get_string_async("Type in the password players can use to control the server from their game.", str)
