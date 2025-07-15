var mode, slide_dist, slowdown_dist;
mode = ""
if (global.theme == 1)
    mode = "Dark"
if (global.theme == 2)
    mode = "Light"
sprite_index = asset_get_index("sBackground" + mode)
image_xscale = 1 // background is set to scale of 0 in editor so it doesn't get in the way of room editing
image_yscale = 1

slide_dist = 75 // base speed
slowdown_dist = 500 // distance at which to start slowing the transition speed
if (abs(global.viewtarget_x - view_xview[0]) < slowdown_dist) // once we are less than slowdown_dist away, start slowing down
    slide_dist *= ((abs(global.viewtarget_x - view_xview[0])) / slowdown_dist) // slow down more and more the closer we are
// if the distance left is smaller than the slide distance, only move that far
slide_dist = (min(abs(global.viewtarget_x - view_xview[0]), slide_dist)) * (sign(global.viewtarget_x - view_xview[0]))
view_xview[0] += slide_dist

slide_dist = 75
if (abs(global.viewtarget_y - view_yview[0]) < slowdown_dist)
    slide_dist *= ((abs(global.viewtarget_y - view_yview[0])) / slowdown_dist)
slide_dist = (min(abs(global.viewtarget_y - view_yview[0]), slide_dist)) * (sign(global.viewtarget_y - view_yview[0]))
view_yview[0] += slide_dist
x = view_xview[0]
y = view_yview[0]
