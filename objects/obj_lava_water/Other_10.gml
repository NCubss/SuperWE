switch global.style
{
    case 0:
        switch global.theme
        {
            case "forest":
                if (global.night == 1)
                    sprite_index = spr_SMB_poison
                else
                    sprite_index = spr_SMB_water
                break
            case "castle":
                sprite_index = spr_SMB_lava
                break
            case "beach":
                sprite_index = spr_SMB_water_b
                break
            case "mountain":
                sprite_index = spr_SMB_lava
				break

        }

        break
    case 1:
        switch global.theme
        {
            case "forest":
                if (global.night == 1)
                    sprite_index = spr_SMB3_poison
                else
                    sprite_index = spr_SMB3_water
                break
            case "castle":
                sprite_index = spr_SMB3_lava
                break
            case "beach":
                sprite_index = spr_SMB3_water_b
                break
            case "mountain":
                sprite_index = spr_SMB3_lava
                break
        }

        break
    case 2:
        switch global.theme
        {
            case "forest":
                if (global.night == 1)
                    sprite_index = spr_SMW_poison
                else
                    sprite_index = spr_water
                break
            case "castle":
                sprite_index = spr_SMW_lava
                break
            case "beach":
                sprite_index = spr_water_b
                break
            case "mountain":
				sprite_index = spr_SMW_lava
                break
        }

        break
    case 3:
        switch global.theme
        {
            case "forest":
                if (global.night == 1)
                    sprite_index = spr_NSMBU_poison
                else
                    sprite_index = spr_NSMBU_water
                break
            case "castle":
                sprite_index = spr_NSMBU_lava
                break
            case "beach":
                sprite_index = spr_NSMBU_water
                break
            case "mountain":
                sprite_index = spr_NSMBU_lava
                break
        }

        break
    case 4:
        switch global.theme
        {
            case "forest":
                if (global.night == 1)
                    sprite_index = spr_SMB2_lava_purple
                else
                    sprite_index = spr_SMB2_water
                break
            case "castle":
                sprite_index = spr_SMB2_lava
                break
            case "beach":
                sprite_index = spr_SMB_water
                break
            case "mountain":
                if (global.night == 1)
                    sprite_index = spr_SMB_lava
                break
        }

        break
}


