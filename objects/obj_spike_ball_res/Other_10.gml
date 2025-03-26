with (instance_create((x + 8), (y + 9), obj_ventana))
{
    id_object = other.id
    index_object1 = 151
    switch global.theme
    {
        case "snow":
            index_object2 = 211
            break
        case "castle":
            index_object2 = 210
            break
        case "ghost":
            index_object2 = 210
            break
        case "underground":
            index_object2 = 210
            break
        default:
            if (global.night == 1)
            {
                index_object2 = 210
                break
            }
            else
                index_object2 = 209
    }

    selected_1 = 0
    selected_2 = 1
    s_hongo_1 = 0
    s_contorno_1 = other.wings
    s_paracaidas = other.paracaidas
}


