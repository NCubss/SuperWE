if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "castle" && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
if (!instance_exists(obj_deadmario))
{
    if (modo_lava == 1 && gravity != 0)
    {
        gravity = 0.1
        if (vspeed > 1)
            vspeed = 1
    }
    else if (modo_lava == 0 && gravity != 0)
    {
        gravity = 0.2
        if (vspeed > 2)
            vspeed = 2
    }
}
if (y > room_height || (vspeed > 0 && instance_exists(obj_lava_water) && (y - 32) > (obj_lava_water.y + 32) && (global.theme == "castle" || (global.theme == "forest" && global.night == 1))))
    instance_destroy()

