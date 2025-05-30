if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -8
if (modo_lava == 1 && instance_exists(obj_lava_water) && (bbox_bottom - 8) < (obj_lava_water.y - 14))
    modo_lava = 0
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "castle" && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "forest" && global.night == 1)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    modo_lava = 1
}
if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
if (girar == 1)
{
    if (swimming == 1 || modo_lava == 1)
        image_angle -= ((6 * rot_speed) * sign(hspeed))
    else
        image_angle -= (16 * sign(hspeed))
}
if (rot_speed > 1)
    rot_speed -= 0.01
else
    rot_speed = 1
if (!instance_exists(obj_deadmario))
{
    if (vspeed > 0)
    {
        if (swimming == 1 || modo_lava == 1)
        {
            gravity = 0.02
            if (vspeed > 1)
                vspeed = 1
        }
        else if (direct_y == -1)
        {
            gravity = 0.1
            if (vspeed > 1)
                vspeed = 1
        }
        else
        {
            gravity = 0.2
            if (vspeed > 4)
                vspeed = 4
        }
        if (instance_exists(obj_lava_water) && y <= (obj_lava_water.y + 16) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
            y = (obj_lava_water.y + 16)
        if (y > (camera_y + 248) || (vspeed > 0 && instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.theme == "castle" || (global.theme == "forest" && global.night == 1))))
            instance_destroy()
    }
    else if (swimming == 1 || modo_lava == 1)
        gravity = 0.02
    else
        gravity = 0.2
}
if (modo_lava == 1)
    hspeed = 0
else if (hspeed > 1 && hspeed < 2)
    hspeed = 1
else if (hspeed > -2 && hspeed < -1)
    hspeed = -1

