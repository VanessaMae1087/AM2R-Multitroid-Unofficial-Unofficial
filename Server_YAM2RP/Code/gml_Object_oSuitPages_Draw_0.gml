var mode;

// set the color based on the theme
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"
sprite_index = asset_get_index("sPages" + mode)

// draw the label
depth = 0
draw_text((x + 26), (y - 12), "Inventory Management")

// draw the sprite grayed out if the settings page is open
if global.Page
    depth = 0
else
    depth = -20
draw_self()
