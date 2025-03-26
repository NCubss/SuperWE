if (global.style == 0)
{
    sprite_index = spr_SMB_nube
    if (global.theme == "snow" && global.night == 1)
        image_index = 5
    else if (global.theme == "snow")
        image_index = 4
    else if (global.theme == "castle")
        image_index = 3
    else if (global.theme == "underwater")
        image_index = 2
    else if (global.theme == "underground" || global.theme == "ghost")
        image_index = 1
    else
        image_index = 0
}
else if (global.style == 1)
{
    sprite_index = spr_SMB3_nube
    if (global.theme == "snow" && global.night == 1)
        image_index = 4
    else if (global.theme == "castle")
        image_index = 3
    else if (global.theme == "underwater")
        image_index = 2
    else if (global.theme == "underground" || global.theme == "ghost" || global.night == 1)
        image_index = 1
    else
        image_index = 0
}
else if (global.style == 2)
{
    sprite_index = spr_nube
    if (global.theme == "underwater")
        image_index = 1
    else
        image_index = 0
}
else if (global.style == 3)
{
    sprite_index = spr_NSMBU_nube
    if (global.theme == "ghost")
        image_index = 5
    else if ((global.theme == "airship" || global.theme == "sky") && global.night == 0)
        image_index = 4
    else if (global.theme == "underwater")
        image_index = 3
    else if (global.theme == "castle")
        image_index = 2
    else if (global.theme == "underground" || global.night == 1)
        image_index = 1
    else
        image_index = 0
}

