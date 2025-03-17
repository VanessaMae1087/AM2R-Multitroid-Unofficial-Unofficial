var mode;
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"
draw_sprite(asset_get_index("sPages" + mode), PageButton, x, y)
if global.syncpage
    depth = 0
else
    depth = -20
