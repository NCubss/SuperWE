switch global.style
{
    case 0: // SMB game style
        switch global.theme
        {
            case "castle":
                sprite_index = spr_SMB_coin_10_dark
                break
            case "ghost":
                sprite_index = spr_SMB_coin_10_night
                break
            case "underground":
                sprite_index = spr_SMB_coin_10_night
                break
			case "mountain":
                if (global.night == 1)
                {
                    sprite_index = spr_SMB_coin_10_dark
                }
                else
                    sprite_index = spr_SMB_coin_10
            default:
                if (global.night == 1)
                {
                    sprite_index = spr_SMB_coin_10_night
                    break
                }
                else
                    sprite_index = spr_SMB_coin_10
        }

        break
    case 1: // SMB3 game style
        switch global.theme
        {
            case "castle":
                sprite_index = spr_SMB3_coin_10_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_coin_10_night
                break
            case "underground":
                sprite_index = spr_SMB3_coin_10_night
                break
			case "mountain":
                if (global.night == 1)
                {
                    sprite_index = spr_SMB3_coin_10_night
                    break
                }
                else
                    sprite_index = spr_SMB3_coin_10
            default:
                if (global.night == 1)
                {
                    sprite_index = spr_SMB3_coin_10_night
                    break
                }
                else
                    sprite_index = spr_SMB3_coin_10
        }

        break
    case 2: // SMW game style
        sprite_index = spr_SMB3_coin_10
        break
    case 3: // NSMBU game style
        sprite_index = spr_SMB3_coin_10
        break
}