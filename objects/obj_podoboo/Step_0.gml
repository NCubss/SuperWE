if (y < (ystart + 42) && ready == 1)
{
    ready = 0
    gravity = 0.2
}
if (y < (ystart + 16) && ready == 0 && vspeed < 0 && rot == 0)
    rot = 1
if (rot == 1)
{
    if (rotacion >= 180)
    {
        rotacion = 180
        rot = 2
    }
    else
        rotacion += 10
}
if (bbox_top > room_height)
{
    if (!ready)
    {
        ready = 1
        alarm[0] = 10
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && (global.theme == "castle" || (global.theme == "forest" && global.night == 1) or (global.theme == "mountain" && global.night == 1)))
{
    if ((!ready) && vspeed > 0)
    {
        ready = 1
        alarm[0] = 10
        if (global.style != 0)
        {
            if (global.theme == "forest")
                instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
            else
                instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        }
    }
}
direct = 1
if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && y >= obj_lava_water.y && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
{
    if (vspeed > 1)
        vspeed = 1
}
else if (vspeed > 6)
    vspeed = 6
