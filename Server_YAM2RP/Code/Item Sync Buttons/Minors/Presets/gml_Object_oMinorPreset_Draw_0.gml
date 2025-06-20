var mode;

// don't draw the button if we're not in the sync page
if (!global.syncpage)
    exit

// change the button color based on the theme
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"
sprite_index = asset_get_index("sMinorPreset" + mode)


draw_self() // draw the button
draw_set_halign(fa_center) // make my life easier by having the text align itself
draw_set_valign(fa_middle)

draw_text((x + 84), (y + 22), text) // draw the button text

draw_set_valign(fa_top) // reset the text alignment
draw_set_halign(fa_left)
