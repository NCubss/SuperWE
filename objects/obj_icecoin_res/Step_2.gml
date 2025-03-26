switch global.style
{
    case 0:
        sprite_index = spr_SMB_ice_coin
        break
    case 1:
        switch global.theme
        {
            case "snow":
                if (global.night == 1)
                    sprite_index = spr_SMB3_ice_coin_ice
                else
                    sprite_index = spr_SMB3_ice_coin
                break
            case "castle":
                sprite_index = spr_SMB3_ice_coin_night
                break
            case "ghost":
                sprite_index = spr_SMB3_ice_coin_night
                break
            case "underground":
                sprite_index = spr_SMB3_ice_coin_night
                break
			case "mountain":
			if (global.night == 1)
                {
                    sprite_index = spr_SMB3_ice_coin_night
                    break
                }
                else
                    sprite_index = spr_SMB3_ice_coin
                break
            default:
                if (global.night == 1)
                {
                    sprite_index = spr_SMB3_ice_coin_night
                    break
                }
                else
                    sprite_index = spr_SMB3_ice_coin
        }

        break
    case 2:
        sprite_index = spr_ice_coin
        break
    case 3:
        sprite_index = spr_NSMBU_ice_coin
        break
}


