with (instance_create((x + 8), (y + 9), obj_ventana))
{
    id_object = other.id
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        index_object1 = 26
    else
        index_object1 = 25
    index_object2 = 27
    selected_1 = 1
    selected_2 = 0
    s_contorno_1 = other.wings
    s_paracaidas = other.paracaidas
}

