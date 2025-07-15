if (!global.Page)
    exit
image_index = 1 - global.exp_rollbackhits
draw_self()
draw_text((x + 30), (y - 12), "Enable sending hits that occur on the attacker's screen (rollback hits)")
