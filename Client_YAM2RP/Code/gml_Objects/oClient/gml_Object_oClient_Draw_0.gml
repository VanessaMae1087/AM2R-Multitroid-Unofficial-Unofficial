if (ds_list_size(roomListData) > 0)
{
    for (var b = 0; b < ds_list_size(roomListData); b++)
    {
        var arrDraw = ds_list_find_value(roomListData, b);
        var arrID = arrDraw[0];
        var arrX = arrDraw[1];
        var arrY = arrDraw[2];
        var arrSprite = arrDraw[3];
        var arrImage = arrDraw[4];
        var arrA1 = arrDraw[5];
        var arrA1X = arrDraw[6];
        var arrA1Y = arrDraw[7];
        var arrA2 = arrDraw[8];
        var arrA2X = arrDraw[9];
        var arrA2Y = arrDraw[10];
        var arrA2A = arrDraw[11];
        var arrMirror = arrDraw[12];
        var arrArmmsl = arrDraw[13];
        var arrRoom = arrDraw[14];
        var arrName = arrDraw[15];
        var arrBlend = arrDraw[16];
        var arrFXTimer = arrDraw[17];
        var arrRoomPrev = arrDraw[18];
        var arrState = arrDraw[19];
        var arrSAX = arrDraw[20];
        var arrSpeedboost = arrDraw[21];
        var arrSJBall = arrDraw[22];
        var arrSJDir = arrDraw[23];
        var arrSpeedCharge = arrDraw[24];
        var arrSpectator = arrDraw[26];
        var arrInvincible = arrDraw[27];
        var arrMosaic = arrDraw[28];
        var arrReform = arrDraw[29];
        var arrVisible = arrDraw[30];
        var arrSBall = arrDraw[31];
        var spacejump = global.spacejump;
        var screwattack = global.screwattack;
        var spiderball = global.spiderball;
        var speedbooster = global.speedbooster;
        canScrew = 0;
        global.otherSAX = arrSAX;
        global.otherMosaic = arrMosaic;
        global.otherReform = arrReform;

        var color = 1;
        for (var f = 0; f < ds_list_size(global.idList); f++)
        {
            var arrList = ds_list_find_value(global.idList, f);
            if (arrList[0, 0] == arrID)
            {
                color = arrList[0, 4];
                break;
            }
        }
        
        for (var i = 0; i < ds_list_size(global.otherPlayerItems); i++)
        {
            var tempArr = ds_list_find_value(global.otherPlayerItems, i);
            var ID = tempArr[0];
            
            if (ID == arrID)
            {
                spacejump = tempArr[2];
                screwattack = tempArr[3];
                spiderball = tempArr[4];
                speedbooster = tempArr[5];
                canScrew = tempArr[12];
            }
        }
        
        var canDraw = 1;
        
        if (!arrVisible && !arrSAX)
            canDraw = 0;
        
        if ((arrRoom == room || arrRoom == 6 || arrRoom == 10 || arrRoom == 9 || arrRoom == 11 || arrRoom == 16) && instance_exists(oCharacter) && room != rm_transition && canDraw)
        {
            if (arrSprite == 985 || arrSprite == 912 || arrSprite == 1080 || arrSprite == 1208 || arrSprite == 1451 || arrSprite == 1450)
            {
                draw_set_blend_mode(bm_add);
                draw_set_alpha(arrFXTimer * 0.1);
                
                if (global.shaders_compiled && os_type != os_android)
                {
                    pal_swap_set(oControl.SpiderballPalette, color, 0);
                    draw_sprite_ext(sSpiderballFX, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                }
                else if (global.shaders_compiled && os_type == os_android)
                {
                    switch (arrSprite)
                    {
                        case 985:
                            draw_sprite_ext(sSpiderballFX, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                            break;
                        
                        case 1080:
                            draw_sprite_ext(sSpiderballFXVaria, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                            break;
                        
                        case 912:
                            draw_sprite_ext(sSpiderballFXGravity, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                            break;
                        
                        case 1208:
                            draw_sprite_ext(sSpiderballFX_fusion, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                            break;
                        
                        case 1638:
                            draw_sprite_ext(sSpiderballFXVaria_fusion, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                            break;
                        
                        case 1639:
                            draw_sprite_ext(sSpiderballFXGravity_fusion, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                            break;
                        
                        case 1850:
                            draw_sprite_ext(sSpiderballFX_fusion, -1, arrX, arrY, 1, 1, 0, -1, 0.2 + (arrFXTimer * 0.1));
                            break;
                    }
                }
                
                if (global.shaders_compiled)
                {
                    pal_swap_reset();
                    shader_reset();
                }
                
                draw_set_alpha(1);
                draw_set_blend_mode(bm_normal);
            }
            
            if (arrRoom != room)
            {
                if (arrRoomPrev == room)
                {
                    draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, alpha, arrArmmsl, arrImage, color);
                    
                    if (arrSpeedboost == 1 || arrSpeedCharge > 0 || arrState == SJSTART || arrState == SUPERJUMP || arrState == SJEND)
                    {
                        if (arrFXTimer == 0 || arrFXTimer == 1)
                        {
                            draw_set_blend_mode(bm_add);
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, 1.1 + (arrFXTimer * 0.2), arrArmmsl, arrImage, color);
                            draw_set_blend_mode(bm_normal);
                        }
                        
                        if (arrFXTimer == 2 || arrFXTimer == 3)
                        {
                            draw_set_blend_mode(bm_add);
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 65535, alpha, arrArmmsl, arrImage, color);
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 16777215, alpha, arrArmmsl, arrImage, color);
                            draw_set_blend_mode(bm_normal);
                        }
                        
                        if (arrFXTimer == 4 || arrFXTimer == 5)
                        {
                            draw_set_blend_mode(bm_add);
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 255, alpha, arrArmmsl, arrImage, color);
                            draw_set_blend_mode(bm_normal);
                        }
                    }
                    
                    if (arrInvincible > 0)
                    {
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 16711680, arrFXTimer * 0.2, arrArmmsl, arrImage, color);
                        draw_set_blend_mode(bm_add);
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 16777215, 0.8 - (arrFXTimer * 0.2), arrArmmsl, arrImage, color);
                        draw_set_blend_mode(bm_normal);
                    }
                    
                    var sprHeight = sprite_get_height(sIdleRight);
                    
                    if (arrSprite != 1004 && arrSprite != 1099 && arrSprite != 931 && arrSprite != 1227 && arrSprite != 1330 && arrSprite != 1433)
                        sprHeight = sprite_get_height(arrSprite);
                    
                    if (string_count("AimUp", sprite_get_name(arrSprite)) > 0)
                        sprHeight = sprite_get_height(sIdleRight);
                    
                    if (string_lower(arrName) == "meep" && string_count("Crouch", sprite_get_name(arrSprite)))
                        sprHeight += 10;
                    
                    if (string_lower(arrName) == "omegadruid" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sMOmega_Head_Roar, 2, arrX, arrY - sprHeight, 0.5 * arrMirror, 0.5, direction, c_white, 1);
                    
                    if (string_lower(arrName) == "meep" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sMiepee, 2, arrX, arrY - sprHeight, 1 * arrMirror, 1, direction, c_white, 1);
                }
            }
            else
            {
                draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, alpha, arrArmmsl, arrImage, color);
                
                if (arrSpeedboost == 1 || arrSpeedCharge > 0 || arrState == SJSTART || arrState == SUPERJUMP || arrState == SJEND)
                {
                    if (arrFXTimer == 0 || arrFXTimer == 1)
                    {
                        draw_set_blend_mode(bm_add);
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, 1.1 + (arrFXTimer * 0.2), arrArmmsl, arrImage, color);
                        draw_set_blend_mode(bm_normal);
                    }
                    
                    if (arrFXTimer == 2 || arrFXTimer == 3)
                    {
                        draw_set_blend_mode(bm_add);
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 65535, alpha, arrArmmsl, arrImage, color);
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 16777215, alpha, arrArmmsl, arrImage, color);
                        draw_set_blend_mode(bm_normal);
                    }
                    
                    if (arrFXTimer == 4 || arrFXTimer == 5)
                    {
                        draw_set_blend_mode(bm_add);
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 255, alpha, arrArmmsl, arrImage, color);
                        draw_set_blend_mode(bm_normal);
                    }
                }
                
                if (arrInvincible > 0)
                {
                    draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 16711680, arrFXTimer * 0.2, arrArmmsl, arrImage, color);
                    draw_set_blend_mode(bm_add);
                    draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, 16777215, 0.8 - (arrFXTimer * 0.2), arrArmmsl, arrImage, color);
                    draw_set_blend_mode(bm_normal);
                }
                
                var sprHeight = sprite_get_height(sIdleRight);
                
                if (arrSprite != 1004 && arrSprite != 1099 && arrSprite != 931 && arrSprite != 1227 && arrSprite != 1330 && arrSprite != 1433)
                    sprHeight = sprite_get_height(arrSprite);
                
                if (string_count("AimUp", sprite_get_name(arrSprite)) > 0)
                    sprHeight = sprite_get_height(sIdleRight);
                
                if (string_lower(arrName) == "meep" && string_count("Crouch", sprite_get_name(arrSprite)))
                    sprHeight += 10;
                
                if (string_lower(arrName) == "omegadruid" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sMOmega_Head_Roar, 2, arrX, arrY - sprHeight, 0.5 * arrMirror, 0.5, direction, c_white, 1);
                
                if (string_lower(arrName) == "meep" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sMiepee, 2, arrX, arrY - sprHeight, 1 * arrMirror, 1, direction, c_white, 1);
            }
        }
        
        var superjump = 30;
        var sjstart = 29;
        
        if (arrRoom == room && room != rm_transition)
        {
            if ((string_count("SJump", sprite_get_name(arrSprite)) > 0 || arrSpeedboost > 0 || arrState == superjump || arrState == sjstart) && arrState != HURT && !arrSpectator)
            {
                var findID = ds_list_find_index(global.speedList, arrID);
                
                if (findID < 0)
                {
                    ds_list_add(global.speedList, arrID);
                    speedbooster = instance_create(x, y, oSpeedBoost);
                    speedbooster.myid = arrID;
                    speedbooster.sax = arrSAX;
                    speedbooster.mirror = arrMirror;
                    speedbooster.sjball = arrSJBall;
                }
            }
            else
            {
                var findID = ds_list_find_index(global.speedList, arrID);
                
                if (findID >= 0)
                    ds_list_delete(global.speedList, findID);
            }
        }
        else
        {
            var findID = ds_list_find_index(global.speedList, arrID);
            
            if (findID >= 0)
                ds_list_delete(global.speedList, findID);
        }
        
        if (arrRoom == room && room != rm_transition)
        {
            if ((string_count("JumpLeft", sprite_get_name(arrSprite)) > 0 || string_count("JumpRight", sprite_get_name(arrSprite)) > 0 || string_count("Spacejump", sprite_get_name(arrSprite)) > 0) && screwattack && canScrew)
            {
                var findID = ds_list_find_index(global.screwList, arrID);
                
                if (findID < 0)
                {
                    ds_list_add(global.screwList, arrID);
                    screwattack = instance_create(x, y, oScrewAttack);
                    screwattack.myid = arrID;
                    screwattack.sax = arrSAX;
                    screwattack.mirror = arrMirror;
                }
            }
            else
            {
                var findID = ds_list_find_index(global.screwList, arrID);
                
                if (findID >= 0)
                    ds_list_delete(global.screwList, findID);
            }
        }
        else
        {
            var findID = ds_list_find_index(global.screwList, arrID);
            
            if (findID >= 0)
                ds_list_delete(global.screwList, findID);
        }
        
        if (arrRoom == room && room != rm_transition)
        {
            var findID = ds_list_find_index(global.hitboxList, arrID);
            
            if (findID < 0)
            {
                ds_list_add(global.hitboxList, arrID);
                hitbox = instance_create(x, y, oMultiHitbox);
                hitbox.myid = arrID;
                hitbox.sax = arrSAX;
            }
        }
        else
        {
            var findID = ds_list_find_index(global.hitboxList, arrID);
            
            if (findID >= 0)
                ds_list_delete(global.hitboxList, findID);
        }
    }
}
else
{
    if (ds_list_size(global.speedList) > 0)
        ds_list_clear(global.speedList);
    
    if (ds_list_size(global.screwList) > 0)
        ds_list_clear(global.screwList);
    
    if (ds_list_size(global.hitboxList) > 0)
        ds_list_clear(global.hitboxList);
}

if (instance_exists(oMapCursor))
{
    if (ds_list_size(posData) > 0)
    {
        for (var i = 0; i < ds_list_size(posData); i++)
        {
            var arrMapIcon = ds_list_find_value(posData, i);
            var arrID = arrMapIcon[0];
            var arrX = arrMapIcon[1];
            var arrY = arrMapIcon[2];
            var sax = arrMapIcon[3];
            var spectator = arrMapIcon[5];
            
            var color = 1;
            for (var f = 0; f < ds_list_size(global.idList); f++)
            {
                var arrList = ds_list_find_value(global.idList, f);
                if (arrList[0, 0] == arrID)
                {
                    color = arrList[0, 4];
                    break;
                }
            }

            if ((global.spectator && !global.sax) || (global.sax && global.juggActive))
            {
                if (!sax)
                {
                    if (spectator && global.sax)
                    {
                    }
                    else if (spectator && !global.sax)
                    {
                        if (arrX != 3 && arrY != 3)
                            draw_sprite_ext(sSpectatorIcon, 0, arrX * 8, (arrY * 8) + 32, 1, 1, direction, c_white, oMapCursor.image_alpha);
                    }
                    else if (arrX != 3 && arrY != 3)
                    {
                        draw_sprite_ext(sFusionIcon, 0, arrX * 8, (arrY * 8) + 32, 1, 1, direction, c_white, oMapCursor.image_alpha);
                    }
                }
                else if (arrX != 3 && arrY != 3)
                {
                    draw_sprite_ext(sMultitroidMapIconMiepee, 0, arrX * 8, (arrY * 8) + 32, 1, 1, direction, c_white, oMapCursor.image_alpha);
                }
            }
            else if (arrX != 3 && arrY != 3 && sax == global.sax && !spectator)
            {
                draw_sprite_ext(oControl.MultitroidMapIcon, color - 1, arrX * 8, (arrY * 8) + 32, 1, 1, direction, c_white, oMapCursor.image_alpha);
            }
        }
    }
    
    var rectoffset = 0;
    
    if (instance_exists(oMapScrBG2))
        rectoffset = oMapScrBG2.rectoffset;
    
    draw_sprite_ext(sMultitroidMapPlayerCountBox, 1, view_xview[0] - (oControl.widescreen_space / 2), (view_yview[0] + 44) - rectoffset, 1, 1, direction, c_white, 1);
    
    if (ds_list_size(global.idList) > 1)
    {
        for (var f = 0; f < ds_list_size(global.idList); f++)
        {
            var arrList = ds_list_find_value(global.idList, f);
            var ID = arrList[0, 0];
            var color = arrList[0, 4];
            var _x = 10 * floor(f / 2);
            var _y = 10 * (f % 2);
            
            if (ID == global.clientID)
                draw_sprite_ext(oControl.MultitroidIcon, color - 1, (view_xview[0] - (oControl.widescreen_space / 2)) + 2 + _x, view_yview[0] + 44 + 13 + _y, 1, 1, direction, c_white, 1);
            else
                draw_sprite_ext(oControl.MultitroidIconDark, color - 1, (view_xview[0] - (oControl.widescreen_space / 2)) + 2 + _x, view_yview[0] + 44 + 13 + _y, 1, 1, direction, c_white, 1);
        }
    }
    else if (ds_list_size(global.idList) == 1 || ds_list_size(global.idList) == 0)
    {
        draw_sprite_ext(oControl.MultitroidIcon, color - 1, (view_xview[0] - (oControl.widescreen_space / 2)) + 2, view_yview[0] + 44 + 13, 1, 1, direction, c_white, 1);
    }
}
