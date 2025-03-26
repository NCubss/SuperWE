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
if instance_exists(obj_levelmanager)
{
    if (obj_levelmanager.editor == 1)
    {
        image_speed = 0
        image_index = 0
        image_alpha = 0.4
    }
    else
    {
        image_speed = 0.1
        image_alpha = 1
    }
}

