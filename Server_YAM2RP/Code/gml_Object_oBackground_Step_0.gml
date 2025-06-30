var mode;
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"
sprite_index = asset_get_index("sBackground" + mode)
image_xscale = 1
image_yscale = 1
