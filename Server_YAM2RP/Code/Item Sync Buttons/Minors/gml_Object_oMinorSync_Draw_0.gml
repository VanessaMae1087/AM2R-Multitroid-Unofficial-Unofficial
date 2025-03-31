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

if global.syncpage
    draw_self()
