if (!global.Page)
    exit;

image_index = 1 - global.forceUniqueColors;
draw_self();
draw_set_halign(fa_right);
draw_text(x - sprite_width, y - 12, "Enforce unique colors when possible");
draw_set_halign(fa_left);
