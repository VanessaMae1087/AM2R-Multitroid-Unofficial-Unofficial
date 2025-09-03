if (global.Page || global.syncpage || !global.saxmode)
    exit;

draw_self();
var str;

if (global.saxmode)
{
    if (global.lobbyLocked)
        str = "Active";
    else
        str = "Paused";
}
else
{
    if (global.lobbyLocked)
        str = "Evil";
    else
        str = "Ready";
}

draw_set_halign(fa_right);
draw_text(x - 12, y + 6, "Lobby State: " + str);
draw_set_halign(fa_left);
