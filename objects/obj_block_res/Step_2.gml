if (obj_levelmanager.editor == 1)
{
    if (global.style == 0)
    {
        sprite_index = spr_SMB_qblock
        if (global.theme == "snow" && global.night == 1)
            image_index = 4
        else if (global.theme == "snow")
            image_index = 3
        else if (global.theme == "castle")
            image_index = 2
        else if (global.theme == "underground" || global.theme == "ghost")
            image_index = 1
        else
            image_index = 0
    }
    else if (global.style == 1)
    {
        if (global.theme == "snow" && global.night == 1)
            sprite_index = spr_SMB3_qblock_ice
        else if (global.theme == "castle")
            sprite_index = spr_SMB3_qblock_dark
        else if (global.theme == "mountain")
        if (global.night == 1)
        {
            sprite_index = spr_SMB3_qblock_dark
        }
        else
        {
        sprite_index = spr_SMB3_qblock
        }
        else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_SMB3_qblock_night
        else
            sprite_index = spr_SMB3_qblock
        image_index = 0
    }
    else if (global.style == 2)
    {
        sprite_index = spr_flipblock
        image_index = 0
    }
    else if (global.style == 3)
    {
        if (global.theme == "castle")
            sprite_index = spr_NSMBU_block_dark
        else if (global.theme == "mountain")
        if (global.night == 1)
        {
            sprite_index = spr_NSMBU_block_dark
        }
        else
        {
			sprite_index = spr_NSMBU_block
        }
        else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_NSMBU_block_night
        else
            sprite_index = spr_NSMBU_block
        image_index = 0
    }
}

