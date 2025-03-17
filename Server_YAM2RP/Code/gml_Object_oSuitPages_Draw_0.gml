var mode;
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"
sprite_index = asset_get_index("sPages" + mode)
if global.Page
    depth = 0
else
    depth = -20
draw_self()
