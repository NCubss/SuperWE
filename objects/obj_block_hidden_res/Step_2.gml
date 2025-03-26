if (obj_levelmanager.editor == 1)
{
    switch global.style
    {
        case 0:
            sprite_index = spr_SMB_block_hidden
            break
        case 1:
            sprite_index = spr_SMB3_block_hidden
            break
        case 2:
            sprite_index = spr_block_hidden
            break
        case 3:
            sprite_index = spr_NSMBU_block_hidden
            break
    }

    switch global.theme
    {
        case "underground":
            image_index = 1
            break
        case "ghost":
            image_index = 1
            break
        case "forest":
            if (global.night == 1)
                image_index = 1
            else if (global.style == 0)
                image_index = 1
            else
                image_index = 4
            break
        case "underwater":
            image_index = 2
            break
        case "desert":
            if (global.night == 1)
                image_index = 1
            else
                image_index = 3
            break
        default:
            if (global.night == 1)
                image_index = 1
            else
                image_index = 0
            break
    }

}

