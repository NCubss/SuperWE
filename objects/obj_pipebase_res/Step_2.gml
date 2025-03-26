switch global.style
{
    case 0:
        image_index = 0
        break
    case 1:
        switch global.theme
        {
            case "underground":
                image_index = 2
                break
            case "ghost":
                image_index = 2
                break
            case "castle":
                image_index = 3
                break
            case "snow":
                if (global.night == 1)
                    image_index = 4
                else
                    image_index = 1
                break
			case "mountain":
                if (global.night == 1)
                    image_index = 3
                else
                    image_index = 1
                break
            default:
                if (global.night == 1)
                {
                    image_index = 2
                    break
                }
                else
                    image_index = 1
        }

        break
    case 2:
        image_index = 5
        break
    case 3:
        image_index = 6
        break
}


