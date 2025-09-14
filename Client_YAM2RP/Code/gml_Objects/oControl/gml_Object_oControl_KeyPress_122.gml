var str = "";
str += "try sync arr: ";

for (var i = 0; i < 15; i++)
{
    str += string(global.debug_syncs_shouldsync[i]);
    str += " ";
}

str += "#sax mode: ";
str += string(global.debug_syncs_saxmode);
str += "#sax: ";
str += string(global.debug_syncs_sax);
str += "#majors arr: ";

for (var i = 0; i < 15; i++)
{
    str += string(global.debug_syncs_item[i]);
    str += " ";
}

str += "#cores existing: ";
str += string(global.debug_syncs_cores);
str += "#in playable room: ";
str += string(global.debug_syncs_gameroom);
str += "#core spawned: ";
str += string(global.debug_syncs_corespawned);
show_message_async(str);
