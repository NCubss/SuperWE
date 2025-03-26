switch global.style
{
    case 0:
        if (global.theme == "snow" && global.night == 1)
            sprite_index = spr_SMB_block_ice
        else if (global.theme == "snow")
            sprite_index = spr_SMB_block_snow
        else if (global.theme == "castle")
            sprite_index = spr_SMB_block_dark
        else if ((global.theme == "mountain") && (global.night == 1))
            sprite_index = spr_SMB_block
        else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_SMB_block_night
        else
            sprite_index = spr_SMB_block
        break
    case 1:
        if (global.theme == "snow" && global.night == 1)
            sprite_index = spr_SMB3_blocks_ice
        else if (global.theme == "castle")
            sprite_index = spr_SMB3_block_dark
        else if ((global.theme == "mountain") && (global.night == 1))
            sprite_index = spr_SMB3_block_dark
        else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_SMB3_block_night
        else
            sprite_index = spr_SMB3_block
        break
    case 3:
        if (global.theme == "castle")
            sprite_index = spr_NSMBU_qblock_dark
        else if ((global.theme == "mountain") && (global.night == 1))
            sprite_index = spr_NSMBU_qblock_dark
        else if (global.theme != "mountain") && (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_NSMBU_qblock_night
        else
            sprite_index = spr_NSMBU_qblock
        break
}

if (global.style == 3)
    image_speed = 0.2
else
    image_speed = 0.15
sprout = -1
progresivo = 0
ready = 0
wings = 0
new_index = 0.2
wings_anim = 0
downwards = 0
s_scalex = 1
s_scaley = 1
expand = 0
expand2 = 0
expand3 = 0
if (global.style == 0)
    sprite_wings = spr_SMB_wings_16x16
else if (global.style == 1)
    sprite_wings = spr_SMB3_wings2
else
    sprite_wings = spr_wings_items
alarm[10] = 4

