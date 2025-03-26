if (global.style == 0)
{
    if (global.theme == "snow" && global.night == 1)
        image_index = 5
    else if (global.theme == "snow")
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
else if (global.style == 1)
{
    if (global.theme == "snow" && global.night == 1)
        image_index = 3
    else if (global.theme == "castle")
        image_index = 2
    else if (global.theme == "underground" || global.theme == "ghost" || global.night == 1)
        image_index = 1
    else
        image_index = 0
}
else
    image_index = 0

