var mode;
if (!global.Page)
    exit
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"
sprite_index = asset_get_index("sPages" + mode)
draw_self()
draw_set_halign(textdir)
if (textdir == fa_right)
    draw_text((x - 16), (y - 12), text)
else
    draw_text((x + sprite_width * 2), (y - 12), text)
