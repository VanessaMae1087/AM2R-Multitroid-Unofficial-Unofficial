var mode;

// set the color based on the theme
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"

// draw the label
draw_set_halign(fa_right)
depth = 0
draw_text((x - 8), (y - 12), "Settings")
draw_set_halign(fa_left)

if global.syncpage
    depth = 0
else
    depth = -20
draw_sprite(asset_get_index("sPages" + mode), PageButton, x, y)
