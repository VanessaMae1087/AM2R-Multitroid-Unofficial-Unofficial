var i;
// oLavaSurface draw code
if ((view_yview[0] + view_hview[0]) >= (baseheight + yoffset - 9))
{
    i = 0
    draw_set_blend_mode(bm_add)
    draw_background_ext(bgLava0, x, (y - 9 + background_get_height(bg) + yoffset), (room_width / (10 - 2 * oControl.widescreen)), (room_height / 10), 0, -1, 0.6)
    for (i = 0; i < (room_width + widescreen_space); i += 32)
    {
        if ((x + i) >= (view_xview[0] - 33) && (x + i) < (view_xview[0] + 360 + widescreen_space) && (baseheight + yoffset + 15) > view_yview[0])
            draw_background_ext(bg, (x + i), (y - 9 + yoffset), 1, 1, 0, -1, 0.8)
    }
    draw_set_blend_mode(bm_normal)
}

// oLavaBGFX draw code
if ((view_yview[0] + view_hview[0]) >= (baseheight - 80))
{
    draw_set_alpha(0.7)
    draw_set_blend_mode(bm_add)
    draw_rectangle_color(x, (baseheight - 80), (room_width + oControl.widescreen_space / 2), baseheight, c_black, c_black, make_color_rgb(80, 40, 0), make_color_rgb(80, 40, 0), 0)
    draw_rectangle_color(x, baseheight, (room_width + oControl.widescreen_space / 2), (baseheight + 128), make_color_rgb(80, 40, 0), make_color_rgb(80, 40, 0), c_black, c_black, 0)
    draw_set_blend_mode(bm_normal)
    draw_set_alpha(1)
}

// oWaterFXV2 draw code
var height_top;
if (surface_exists(mysurf) && reflections)
{
    global.wave_height = max(((round(lerp(global.wave_height, floor(((60 - (fps - 1)) ^ 1.5)), 0.1))) - 1), 1)
    height_top = min((y_bottom - y_top), global.wave_height)
    if ((view_yview[0] + view_hview[0]) >= y)
    {
        for (yy = 0; yy < 240; yy += global.wave_height)
        {
            xx = AMP * (sin(THETA + FREQ * yy / y_bottom))
            if (yy >= y_top)
            {
                draw_surface_part_ext(mysurf, clamp((view_xview - x), 0, 426), yy, (view_wview[0] + oControl.widescreen_space), global.wave_height, (x + xx - oControl.widescreen_space / 2), (view_yview[0] + yy), 1, 1, -1, 0.2)
                if ((yy - y_top) < global.wave_height)
                    draw_surface_part_ext(mysurf, clamp((view_xview - x), 0, 426), y_top, (view_wview[0] + oControl.widescreen_space), (yy - y_top), (x + xx - oControl.widescreen_space / 2), (view_yview[0] + y_top), 1, 1, -1, 0.2)
            }
        }
        if (height_top < global.wave_height)
            draw_surface_part_ext(mysurf, clamp((view_xview - x), 0, 426), y_top, (view_wview[0] + oControl.widescreen_space), height_top, (x + xx - oControl.widescreen_space / 2), y, 1, 1, -1, 0.2)
    }
}
