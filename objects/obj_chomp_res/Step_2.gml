if (obj_levelmanager.editor == 1)
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        sprite_index = spr_chainchomp_night_res
    else
        sprite_index = spr_chainchomp_res
    image_index = global.style
}
