switch global.style
{
    case 0:
        if (global.night == 1)
            sprite_index = spr_SMB_happymoon
        else
            sprite_index = spr_SMB_angrysun
        break
    case 1:
        if (global.night == 1)
            sprite_index = spr_SMB3_happymoon
        else
            sprite_index = spr_SMB3_angrysun
        break
    case 2:
        if (global.night == 1)
            sprite_index = spr_happymoon
        else
            sprite_index = spr_angrysun
        break
    case 3:
        if (global.night == 1)
            sprite_index = spr_NSMBU_happymoon
        else
            sprite_index = spr_NSMBU_angrysun_idle
        break
}


