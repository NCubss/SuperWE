with (instance_create((x + 8), (y + 9), obj_ventana))
{
    sprite_index = spr_windows_2
    id_object = other.id
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        index_object1 = 156
    else
        index_object1 = 155
    index_object2 = 157
    selected_1 = 0
    selected_2 = 1
    number = 2.1
}

