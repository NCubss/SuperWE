if (obj_levelmanager.editor == 1)
{
    image_index = global.style
    if (instance_exists(obj_lava_water) && y >= (obj_lava_water.y + 16) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach"))
        modo_water = 1
    else
        modo_water = 0
}

