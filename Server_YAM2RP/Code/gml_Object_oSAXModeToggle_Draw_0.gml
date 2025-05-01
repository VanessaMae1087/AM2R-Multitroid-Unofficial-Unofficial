var str, color;
if (global.Page || global.syncpage)
    exit
draw_self()
if global.saxmode
{
    str = "ON"
    color = c_red
}
else
{
    str = "OFF"
    if (global.theme == 2)
        color = 0
    else
        color = 16777215
}
draw_text_color(1120, (y - 40), ("SA-X Mode: " + str), color, color, color, color, 1)
