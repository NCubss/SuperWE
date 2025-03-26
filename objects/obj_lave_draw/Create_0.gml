image_speed = 0.1
if (global.style == 0)
{
    if (global.night == 1 && global.theme == "forest")
        sprite_index = spr_SMB_poison
    else if (global.theme == "castle")
        sprite_index = spr_SMB_lava
    else if (global.night == 1 && global.theme == "mountain")
        sprite_index = spr_SMB_lava
}
else if (global.style == 1)
{
    if (global.night == 1 && global.theme == "forest")
        sprite_index = spr_SMB3_poison
    else if (global.theme == "castle")
        sprite_index = spr_SMB3_lava
    else if (global.night == 1 && global.theme == "mountain")
        sprite_index = spr_SMB3_lava
}
else if (global.style == 2)
{
    if (global.night == 1 && global.theme == "forest")
        sprite_index = spr_SMW_poison
    else if (global.theme == "castle")
        sprite_index = spr_SMW_lava
    else if (global.night == 1 && global.theme == "mountain")
        sprite_index = spr_SMW_lava
}

