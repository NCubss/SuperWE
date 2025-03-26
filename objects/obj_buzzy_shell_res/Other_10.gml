with (instance_create((x + 8), (y + 9), obj_ventana))
{
    sprite_index = spr_windows_3
    id_object = other.id
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    {
        index_object1 = 36
        index_object2 = 88
    }
    else
    {
        index_object1 = 35
        index_object2 = 87
    }
    number = 3.1
    selected_1 = 0
    selected_2 = 1
    s_paracaidas = other.paracaidas
}

