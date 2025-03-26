if (hspeed == 0)
{
    if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
        hspeed = (0.3 * direct)
    else
        hspeed = (0.5 * direct)
}
