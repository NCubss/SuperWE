vspeed = 0
y = ystart
if (cointime == 2)
{
    if (global.style == 0)
    {
        sprite_index = spr_SMB_empty_block
        image_speed = 0
        if (global.theme == "snow" && global.night == 1)
            image_index = 4
        else if (global.theme == "snow")
            image_index = 3
        else if (global.theme == "castle")
            image_index = 2
        else if (global.theme == "mountain")
            image_index = 0
        else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            image_index = 1
        else
            image_index = 0
    }
    else if (global.style == 1)
    {
        sprite_index = spr_SMB3_empty_block
        image_speed = 0
        if (global.theme == "snow" && global.night == 1)
            image_index = 3
        else if (global.theme == "castle")
            image_index = 2
        else if (global.theme == "mountain")
        if (global.night == 1)
            image_index = 2
        else
            image_index = 0
        else if (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            image_index = 1
        else
            image_index = 0
    }
    else if (global.style == 2)
        sprite_index = spr_qblock_empty
    else if (global.style == 3)
    {
        sprite_index = spr_NSMBU_qblock_empty
        image_speed = 0
        if (global.theme == "castle")
            image_index = 2
        else if (global.theme != "mountain") && (global.theme == "underground" || global.theme == "ghost" || global.night == 1)
            image_index = 1
        else if (global.theme == "mountain")
        if (global.night == 1)
            image_index = 2
        else
            image_index = 0
        else
            image_index = 0
    }
}
else
    ready = 0

