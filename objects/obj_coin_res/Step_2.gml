switch global.style
{
    case 0:
        switch global.theme
        {
            case "castle":
                sprite_index = spr_SMB_coin_dark
                break
            case "underground":
                sprite_index = spr_SMB_coin_night
                break
            case "ghost":
                sprite_index = spr_SMB_coin_night
                break
			case "mountain":
			if (global.night == 1)
                {
                    sprite_index = spr_SMB_coin_dark
                    break
                }
                else
                    sprite_index = spr_SMB_coin
                break
            default:
                if (global.night == 1)
                {
                    sprite_index = spr_SMB_coin_night
                    break
                }
                else
                    sprite_index = spr_SMB_coin
        }

        break
    case 1:
        switch global.theme
        {
            case "castle":
                sprite_index = spr_SMB3_coin_dark
                break
            case "underground":
                sprite_index = spr_SMB3_coin_night
                break
            case "ghost":
                sprite_index = spr_SMB3_coin_night
                break
			case "mountain":
			if (global.night == 1)
                {
                    sprite_index = spr_SMB3_coin_dark
                    break
                }
                else
                    sprite_index = spr_SMB3_coin
                break
            default:
                if (global.night == 1)
                {
                    sprite_index = spr_SMB3_coin_night
                    break
                }
                else
                    sprite_index = spr_SMB3_coin
        }

        break
    case 2:
        sprite_index = spr_coin
        break
    case 3:
        sprite_index = spr_NSMBU_coin
        break
}


