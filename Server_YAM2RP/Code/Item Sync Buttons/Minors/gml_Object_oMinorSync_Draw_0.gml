// set the sprite based on the type assigned in CC
switch minortype
{
    case 0:
        sprite_index = sMinorSyncETank
        break
    case 2:
        sprite_index = sMinorSyncMTank
        break
    case 4:
        sprite_index = sMinorSyncSMTank
        break
    case 6:
        sprite_index = sMinorSyncPBTank
        break
}

// only draw if the sync menu is open
if global.syncpage
{
    draw_self()
    draw_set_halign(fa_center)
    draw_set_valign(fa_bottom)
    draw_set_font(global.syncnumsfont)
    if (draw_get_colour() == c_black) // find the text color, which is based on the theme you're using
    {
        draw_set_colour(c_white) // and set it to the opposite, for a text shadow effect
        draw_text((x + 76), (y + 2), string(global.startingminors[minortype])) // fusion side, shadow
        draw_set_valign(fa_top)
        draw_text((x + 76), (y + 74), string(global.startingminors[(minortype + 1)])) // sa-x side, shadow
        draw_set_colour(c_black)
        draw_text((x + 72), (y + 70), string(global.startingminors[(minortype + 1)])) // sa-x side, number
        draw_set_valign(fa_bottom)
        draw_text((x + 72), (y - 2), string(global.startingminors[minortype])) // fusion side, number
    }
    else
    { // same code as above but colors are flipped
        draw_set_colour(c_black)
        draw_text((x + 76), (y + 2), string(global.startingminors[minortype]))
        draw_set_valign(fa_top)
        draw_text((x + 76), (y + 74), string(global.startingminors[(minortype + 1)]))
        draw_set_colour(c_white)
        draw_text((x + 72), (y + 70), string(global.startingminors[(minortype + 1)]))
        draw_set_valign(fa_bottom)
        draw_text((x + 72), (y - 2), string(global.startingminors[minortype]))
    }
    draw_set_font(font0)
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
    
    if (minortype == 0)
        draw_text(150, 525, "Use Shift, Space, and Ctrl#to increase minors in bulk")
}
