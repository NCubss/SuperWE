if (obj_levelmanager.editor == 1)
{
    if (global.style == 0)
    {
        if (global.theme == "snow" && global.night == 1)
            sprite_index = spr_SMB_block_ice
        else if (global.theme == "snow")
            sprite_index = spr_SMB_block_snow
        else if (global.theme == "castle")
            sprite_index = spr_SMB_block_dark
        else if (global.theme == "mountain") && (global.night == 1)
            sprite_index = spr_SMB_block_dark
        else if (global.theme != "mountain") && (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_SMB_block_night
        else
            sprite_index = spr_SMB_block
    }
    else if (global.style == 1)
    {
        if (global.theme == "snow" && global.night == 1)
            sprite_index = spr_SMB3_blocks_ice
        else if (global.theme == "castle")
            sprite_index = spr_SMB3_block_dark
        else if (global.theme == "mountain") && (global.night == 1)
            sprite_index = spr_SMB3_block_dark
         else if (global.theme != "mountain") && (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_SMB3_block_night
        else
            sprite_index = spr_SMB3_block
        if (sprout == -50)
            sprout = 2
    }
    else if (global.style == 2)
    {
        sprite_index = spr_qblock
        if (sprout == -50)
            sprout = 2
    }
    else if (global.style == 3)
    {
        if (global.theme == "castle")
            sprite_index = spr_NSMBU_qblock_dark
        else if (global.theme == "mountain") && (global.night == 1)
            sprite_index = spr_NSMBU_qblock_dark
        else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_NSMBU_qblock_night
        else
            sprite_index = spr_NSMBU_qblock
        image_index = 0
        if (sprout == -50)
            sprout = 2
    }
}

