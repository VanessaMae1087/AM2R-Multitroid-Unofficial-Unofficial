if (!global.Page)
    exit;

image_index = 1 - global.exp_gradualetanks;
draw_self();
draw_text(x + 30, y - 12, "Energy tanks refill health over time, cancelled by PVP damage");
