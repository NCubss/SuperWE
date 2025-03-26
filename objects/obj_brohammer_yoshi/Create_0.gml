if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && global.theme == "forest" && global.night == 0))
{
    vspeed = -1
    gravity = 0.05
}
else
{
    vspeed = -2
    gravity = 0.125
}
big = 0
direct = 1

