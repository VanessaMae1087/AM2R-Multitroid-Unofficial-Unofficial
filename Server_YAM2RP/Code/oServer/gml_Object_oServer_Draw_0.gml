var str, nameStr;

if (server >= 0)
    str = "Running!   Port: " + string(port);
else
    str = "Not running, cannot open port";

var strMin;

if (global.doomtime != 1)
    strMin = " Mins.";
else
    strMin = " Min.";

var diffStr;

switch (syncedDifficulty)
{
    case 0:
        diffStr = "Easy";
        break;
    
    case 1:
        diffStr = "Normal";
        break;
    
    case 2:
        diffStr = "Hard";
        break;
    
    case 3:
        diffStr = "Fusion";
        break;
}

var ELMStr;

switch (syncedELM)
{
    case 0:
        ELMStr = "Disabled";
        break;
    
    case 1:
        ELMStr = "Enabled";
        break;
}

if (global.theme == 2)
    draw_set_color(c_black);
else
    draw_set_color(c_white);

draw_set_font(font0);
draw_text(5, 5, "Server Status:   " + string(str));
draw_text(5, 55, "Doomsday Set For: " + string(global.doomtime) + string(strMin));
draw_text(270, 55, "| Time Remaining: " + string(global.gametime / 60) + "s");
draw_text(5, 85, "X Power: " + string(global.damageMult));
draw_text(5, 115, "Metroids Until A6: " + string(global.MetCount));
draw_text(220, 115, "| Metroids Remaining: " + string(global.monstersleft));
draw_text(5, 145, "Difficulty: " + string(diffStr));
draw_text(170, 145, "|  Seed: " + string(global.seed));
draw_text(5, 175, "Extreme Lab Metroids: " + string(ELMStr));
draw_text(5, 205, "Players(" + string(ds_list_size(playerList)) + "/" + string(maxClients) + "): ");

if (ds_list_size(idList) > 0)
{
    for (var i = 0; i < ds_list_size(idList); i++)
    {
        var arrList = ds_list_find_value(idList, i);
        
        if (array_length_2d(arrList, 0) > 2)
        {
            var color;
            
            if (global.theme == 2)
                color = 0;
            else
                color = 16777215;
            
            switch (arrList[0, 4])
            {
                case 1:
                    color = 32768;
                    break;
                
                case 2:
                    color = 255;
                    break;
                
                case 3:
                    color = 16711680;
                    break;
                
                case 4:
                    color = 65535;
                    break;
                
                case 5:
                    color = 4235519;
                    break;
                
                case 6:
                    color = 8388736;
                    break;
                
                case 7:
                    color = 16711935;
                    break;
                
                case 8:
                    color = 16777215;
                    break;
                
                case 9:
                    color = make_color_rgb(204, 255, 83);
                    break;
                
                case 10:
                    color = make_color_rgb(183, 63, 36);
                    break;
                
                case 11:
                    color = make_color_rgb(105, 165, 255);
                    break;
                
                case 12:
                    color = make_color_rgb(255, 198, 45);
                    break;
                
                case 13:
                    color = make_color_rgb(229, 162, 97);
                    break;
                
                case 14:
                    color = make_color_rgb(155, 88, 255);
                    break;
                
                case 15:
                    color = make_color_rgb(254, 4, 222);
                    break;
                
                case 16:
                    color = make_color_rgb(163, 217, 184);
                    break;
            }

            nameStr = string_replace_all(string(arrList[0, 2]), "#", "\#");

            draw_text_color(4, 206 + ((i + 1) * 30), nameStr, c_black, c_black, c_black, c_black, 1);
            draw_text_color(6, 206 + ((i + 1) * 30), nameStr, c_black, c_black, c_black, c_black, 1);
            draw_text_color(4, 207 + ((i + 1) * 30), nameStr, c_black, c_black, c_black, c_black, 1);
            draw_text_color(6, 207 + ((i + 1) * 30), nameStr, c_black, c_black, c_black, c_black, 1);
            draw_text_color(4, 208 + ((i + 1) * 30), nameStr, c_black, c_black, c_black, c_black, 1);
            draw_text_color(6, 208 + ((i + 1) * 30), nameStr, c_black, c_black, c_black, c_black, 1);
            draw_text_color(5, 207 + ((i + 1) * 30), nameStr, color, color, color, color, 1);
        }
    }
}

if (global.Page || global.syncpage)
{
    if (global.theme == 2)
    {
        draw_set_alpha(0.6000000000000001);
        draw_rectangle_colour(0, 0, room_width, room_height, make_color_rgb(160, 160, 160), make_color_rgb(160, 160, 160), c_white, c_white, 0);
        draw_set_alpha(1);
    }
    else if (global.theme == 1)
    {
        draw_set_alpha(0.6000000000000001);
        draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, make_color_rgb(60, 60, 60), make_color_rgb(60, 60, 60), 0);
        draw_set_alpha(1);
    }
    else if (global.theme == 0)
    {
        draw_set_alpha(0.6000000000000001);
        draw_rectangle_colour(0, 0, room_width, room_height, make_color_rgb(40, 40, 40), make_color_rgb(40, 40, 40), make_color_rgb(100, 100, 100), make_color_rgb(100, 100, 100), 0);
        draw_set_alpha(1);
    }
}
