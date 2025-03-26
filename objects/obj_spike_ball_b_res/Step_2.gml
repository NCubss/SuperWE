if (obj_levelmanager.editor == 1)
{
    if (global.theme == "snow")
    {
        switch global.style
        {
            case 0:
                image_index = 6
                break
            case 1:
                image_index = 7
                break
            case 2:
                image_index = 8
                break
            case 3:
                image_index = 9
                break
        }

    }
    else if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    {
        switch global.style
        {
            case 0:
                image_index = 1
                break
            case 1:
                image_index = 3
                break
            case 2:
                image_index = 4
                break
            case 3:
                image_index = 5
                break
        }

    }
    else
    {
        switch global.style
        {
            case 0:
                image_index = 0
                break
            case 1:
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
}


