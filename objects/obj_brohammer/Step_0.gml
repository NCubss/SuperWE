if (!instance_exists(obj_deadmario))
{
    if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    {
        if (global.style == 0)
            image_angle -= (8 * sign(hspeed))
        else
            image_angle -= (6 * sign(hspeed))
        gravity = 0.05
    }
    else
    {
        if (global.style == 0)
            image_angle -= (25 * sign(hspeed))
        else
            image_angle -= (15 * sign(hspeed))
        gravity = 0.125
    }
}
if (modo_lava == 1)
{
    gravity = 0.05
    if (vspeed > 1)
        vspeed = 1
}
else if (vspeed > 4)
    vspeed = 4
if (x < (camera_x - 32) || x > ((camera_right) + 32) || y > ((camera_bottom) + 32))
    instance_destroy()
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "castle" && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "forest" && global.night == 1 && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    modo_lava = 1
}

