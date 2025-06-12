yy = (sin(timer * frequency)) * amplitude
if (lift > 0)
    draw_sprite_ext(sElderSeptoggBackWings, image_index, xstart, (y + yy + 4), 1, 1, 0, c_gray, 1)
if (!flashing)
    draw_sprite_ext(sprite_index, image_index, xstart, (y + yy), image_xscale, 1, image_angle, -1, image_alpha)
else
{
    draw_sprite_ext(sprite_index, image_index, xstart, (y + yy), image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sprite_index, image_index, xstart, (y + yy), image_xscale, 1, image_angle, -1, (1 - (6 - flashing) * 0.25))
    draw_set_blend_mode(bm_normal)
}
