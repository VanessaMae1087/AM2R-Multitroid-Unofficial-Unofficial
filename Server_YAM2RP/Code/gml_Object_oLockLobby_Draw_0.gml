var str;
if (global.Page || global.syncpage)
    exit
draw_self()
if global.lobbyLocked
    str = "Active"
else
    str = "Paused"
draw_set_halign(fa_right)
draw_text((x - 12), (y + 6), ("Lobby State: " + str))
draw_set_halign(fa_left)
