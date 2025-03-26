if (obj_levelmanager.editor == 1)
{
    if (global.night == 1 && global.theme == "ground")
    {
        sprite_index = spr_rotten_b
        image_index = global.style
    }
    else
    {
        switch global.style
        {
            case 0:
                sprite_index = spr_SMB_1up
                break
            case 1:
                sprite_index = spr_SMB3_1up
                break
            case 2:
                sprite_index = spr_1up
                break
            case 3:
                sprite_index = spr_NSMBU_1up
                break
        }

    }
}

