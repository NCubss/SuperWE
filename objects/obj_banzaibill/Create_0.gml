switch global.style
{
    case 0:
        sprite_index = spr_SMB_banzaibill
        image_speed = 0
        if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            image_index = 1
        else
            image_index = 0
        break
    case 1:
        sprite_index = spr_SMB3_banzaibill
        image_speed = 0
        if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            image_index = 1
        else
            image_index = 0
        break
    case 2:
        sprite_index = spr_banzaibill
        break
    case 3:
        sprite_index = spr_NSMBU_banzaibill
        image_speed = 0
        switch global.theme
        {
            case "airship":
                image_index = 6
                break
            case "sky":
                image_index = 6
                break
            case "desert":
                image_index = 5
                break
            case "forest":
                image_index = 4
                break
            case "ghost":
                image_index = 3
                break
            case "castle":
                image_index = 2
                break
            case "underground":
                image_index = 1
                break
			case "mountain":
                if (global.night == 1)
                {
                    image_index = 2
                    break
                }
                else
                    image_index = 6
				break
            default:
                if (global.night == 1)
                {
                    image_index = 1
                    break
                }
                else
                    image_index = 0
        }
        break
    case 4:
        sprite_index = spr_SMB_banzaibill
        break
}

direct_t = 1
anim = 0
hardness = 99
stomp = 0
edible = 2
direct = 1
rotacion = 0
dead_h = 0
wings = 0
w_wings = 0
apilar = 0
swimming = 0
alarm[10] = 1
if (global.style != 0 && global.style != 3)
    alarm[0] = 15

