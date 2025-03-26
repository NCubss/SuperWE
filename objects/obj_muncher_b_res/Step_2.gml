var dark;
if (obj_levelmanager.editor == 1)
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        dark = 1
    else
        dark = 0
    switch global.style
    {
        case 0:
            if (dark == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 1:
            if (dark == 1)
                image_index = 3
            else
                image_index = 2
            break
        case 2:
            image_index = 4
            break
        case 3:
            image_index = 5
            break
    }

}

