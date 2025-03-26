if (global.style == 0)
{
    if (global.theme == "snow" && global.night == 1)
        sprite_index = spr_SMB_block_ice
    else if (global.theme == "snow")
        sprite_index = spr_SMB_block_snow
    else if (global.theme == "castle")
        sprite_index = spr_SMB_block_dark
    else if (global.theme == "mountain")
        sprite_index = spr_SMB_block
    else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
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
    else if (global.theme == "mountain")
    if (global.night == 0)
    {
        sprite_index = spr_SMB3_block
    }
    else
        sprite_index = spr_SMB3_block_dark
    else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        sprite_index = spr_SMB3_block_night
    else
        sprite_index = spr_SMB3_block
}
else if (global.style == 3)
{
    if (global.theme == "castle")
        sprite_index = spr_NSMBU_qblock_dark
    else if ((global.theme == "mountain") && (global.night == 1))
        sprite_index = spr_NSMBU_qblock_dark
    else if (global.theme != "mountain") && (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        sprite_index = spr_NSMBU_qblock_night
    else
        sprite_index = spr_NSMBU_qblock
}
image_speed = 0.15
ready = 0
cointime = 0
downwards = 0
wings = 0
wings_anim = 0
s_scalex = 1
s_scaley = 1
expand = 0
expand2= 0
expand3 = 0
if (global.style == 0)
    sprite_wings = spr_SMB_wings_16x16
else if (global.style == 1)
    sprite_wings = spr_SMB3_wings2
else
    sprite_wings = spr_wings_items
alarm[10] = 4

