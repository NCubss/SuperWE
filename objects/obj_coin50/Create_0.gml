switch global.style
{
    case 0:
        switch global.theme
        {
            case "castle":
                sprite_index = spr_SMB_coin_50_dark
                break
            case "ghost":
                sprite_index = spr_SMB_coin_50_night
                break
            case "underground":
                sprite_index = spr_SMB_coin_50_night
                break
            default:
                if (global.night == 1)
                {
                    sprite_index = spr_SMB_coin_50_night
                    break
                }
                else
                    sprite_index = spr_SMB_coin_50
        }

        break
    case 1:
        switch global.theme
        {
            case "castle":
                sprite_index = spr_SMB3_coin_50_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_coin_50_night
                break
            case "underground":
                sprite_index = spr_SMB3_coin_50_night
                break
            default:
                if (global.night == 1)
                {
                    sprite_index = spr_SMB3_coin_50_night
                    break
                }
                else
                    sprite_index = spr_SMB3_coin_50
        }

        break
    case 2:
        sprite_index = spr_coin_50
        break
    case 3:
        sprite_index = spr_NSMBU_coin_50
        break
}

active = 0
image_speed = 0.15
