var str, diffStr, ELMStr, i, arrList, color, strMin;
if (server >= 0)
    str = "Running!   Port: " + string(port)
else
    str = "Not running, cannot open port"
if (global.doomtime != 1)
    strMin = " Mins."
else
    strMin = " Min."
switch syncedDifficulty
{
    case 0:
        diffStr = "Easy"
        break
    case 1:
        diffStr = "Normal"
        break
    case 2:
        diffStr = "Hard"
        break
    case 3:
        diffStr = "Fusion"
        break
}

switch syncedELM
{
    case 0:
        ELMStr = "Disabled"
        break
    case 1:
        ELMStr = "Enabled"
        break
}

if (global.theme == 2)
    draw_set_color(c_black)
else
    draw_set_color(c_white)
draw_set_font(font0)
draw_text(5, 5, ("Server Status:   " + string(str)))
draw_text(5, 55, ("Doomsday Set For: " + string(global.doomtime) + string(strMin)))
draw_text(270, 55, ("| Time Remaining: " + (string(global.gametime / 60)) + "s"))
draw_text(5, 85, ("X Power: " + string(global.damageMult)))
draw_text(5, 115, ("Metroids Until A6: " + string(global.MetCount)))
draw_text(220, 115, ("| Metroids Remaining: " + string(global.monstersleft)))
draw_text(5, 145, ("Difficulty: " + string(diffStr)))
draw_text(170, 145, ("|  Seed: " + string(global.seed)))
draw_text(5, 175, ("Extreme Lab Metroids: " + string(ELMStr)))
draw_text(5, 205, ("Players(" + string(ds_list_size(playerList)) + "/" + string(maxClients) + "): "))
if (ds_list_size(idList) > 0)
{
    for (i = 0; i < ds_list_size(idList); i++)
    {
        arrList = ds_list_find_value(idList, i)
        if (array_length_2d(arrList, 0) > 2)
        {
            if (global.theme == 2)
                color = c_black
            else
                color = c_white
            switch arrList[0, 0]
            {
                case 1:
                    color = c_green
                    break
                case 2:
                    color = c_red
                    break
                case 3:
                    color = c_blue
                    break
                case 4:
                    color = c_yellow
                    break
                case 5:
                    color = c_orange
                    break
                case 6:
                    color = c_purple
                    break
                case 7:
                    color = c_fuchsia
                    break
                case 8:
                    color = c_white
                    break
                case 9:
                    color = make_color_rgb(204, 255, 83)
                    break
                case 10:
                    color = make_color_rgb(183, 63, 36)
                    break
                case 11:
                    color = make_color_rgb(105, 165, 255)
                    break
                case 12:
                    color = make_color_rgb(255, 198, 45)
                    break
                case 13:
                    color = make_color_rgb(229, 162, 97)
                    break
                case 14:
                    color = make_color_rgb(155, 88, 255)
                    break
                case 15:
                    color = make_color_rgb(254, 4, 222)
                    break
                case 16:
                    color = make_color_rgb(163, 217, 184)
                    break
            }

            draw_text_color(4, (206 + (i + 1) * 30), arrList[0, 2], c_black, c_black, c_black, c_black, 1)
            draw_text_color(6, (206 + (i + 1) * 30), arrList[0, 2], c_black, c_black, c_black, c_black, 1)
            draw_text_color(4, (207 + (i + 1) * 30), arrList[0, 2], c_black, c_black, c_black, c_black, 1)
            draw_text_color(6, (207 + (i + 1) * 30), arrList[0, 2], c_black, c_black, c_black, c_black, 1)
            draw_text_color(4, (208 + (i + 1) * 30), arrList[0, 2], c_black, c_black, c_black, c_black, 1)
            draw_text_color(6, (208 + (i + 1) * 30), arrList[0, 2], c_black, c_black, c_black, c_black, 1)
            draw_text_color(5, (207 + (i + 1) * 30), arrList[0, 2], color, color, color, color, 1)
        }
    }
}
if (global.Page || global.syncpage)
{
    if (global.theme == 2)
    {
        draw_set_alpha(0.6000000000000001)
        draw_rectangle_colour(view_xview[0], view_yview[0], (view_xview[0] + view_wview[0]), (view_xview[0] + view_wview[0]), make_color_rgb(160, 160, 160), make_color_rgb(160, 160, 160), c_white, c_white, 0)
        draw_set_alpha(1)
    }
    else if (global.theme == 1)
    {
        draw_set_alpha(0.6000000000000001)
        draw_rectangle_colour(view_xview[0], view_yview[0], (view_xview[0] + view_wview[0]), (view_xview[0] + view_wview[0]), c_black, c_black, make_color_rgb(60, 60, 60), make_color_rgb(60, 60, 60), 0)
        draw_set_alpha(1)
    }
    else if (global.theme == 0)
    {
        draw_set_alpha(0.6000000000000001)
        draw_rectangle_colour(view_xview[0], view_yview[0], (view_xview[0] + view_wview[0]), (view_xview[0] + view_wview[0]), make_color_rgb(40, 40, 40), make_color_rgb(40, 40, 40), make_color_rgb(100, 100, 100), make_color_rgb(100, 100, 100), 0)
        draw_set_alpha(1)
    }
}
