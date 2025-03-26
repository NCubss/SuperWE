if (hspeed == 0)
{
    if (global.theme == "underwater" || ((global.theme == "airship" || global.theme == "sky") && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && global.theme == "forest" && global.night == 0))
        hspeed = (0.8 * direct)
    else
        hspeed = (1.3 * direct)
}
