draw_set_alpha(1);

if (oControl.mod_fusion == 0)
{
    if (global.currentsuit == 0)
    {
        if (global.hijump == 0)
            draw_sprite_ext(sSubScrPlayer, 0, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
        else
            draw_sprite_ext(sSubScrPlayer, 1, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
    }
    
    if (global.currentsuit == 1)
    {
        if (global.hijump == 0)
            draw_sprite_ext(sSubScrPlayer, 2, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
        else
            draw_sprite_ext(sSubScrPlayer, 3, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
    }
    
    if (global.currentsuit == 2)
    {
        if (global.hijump == 0)
            draw_sprite_ext(sSubScrPlayer, 4, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
        else
            draw_sprite_ext(sSubScrPlayer, 5, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
    }
}
else if (oControl.mod_fusion == 1)
{
    var omegaSubScr = 0;
    
    if (global.ibeam && global.saxmode)
    {
        omegaSubScr = 1;
        draw_sprite_ext(sSubScrPlayer, 11, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
    }
    
    if (!omegaSubScr)
    {
        if (global.currentsuit == 0)
            draw_sprite_ext(sSubScrPlayer, 6, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
        
        if (global.currentsuit == 1 && oControl.msr_fusionsuit == 0)
            draw_sprite_ext(sSubScrPlayer, 7, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
        
        if (global.currentsuit == 2 && oControl.msr_fusionsuit == 0)
            draw_sprite_ext(sSubScrPlayer, 8, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
        
        if (global.currentsuit == 1 && oControl.msr_fusionsuit == 1)
            draw_sprite_ext(sSubScrPlayer, 9, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
        
        if (global.currentsuit == 2 && oControl.msr_fusionsuit == 1)
            draw_sprite_ext(sSubScrPlayer, 10, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
    }
}
