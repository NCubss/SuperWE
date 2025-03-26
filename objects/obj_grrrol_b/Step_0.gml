if (global.theme == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
event_user(3)
event_user(4)
event_user(2)
if (global.night == 1)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        hspeed -= 0.0224
        if (swimming == 1)
        {
            if (hspeed < -1)
                hspeed = -1
        }
        else if (hspeed < -1.2)
            hspeed = -1.2
    }
    else
    {
        hspeed += 0.0324
        if (swimming == 1)
        {
            if (hspeed > 1)
                hspeed = 1
        }
        else if (hspeed > 1.2)
            hspeed = 1.2
    }
}
angle -= (3.5 * sign(hspeed))
if (swimming == 1)
{
    if (hspeed > 1)
    {
        hspeed -= 0.08
        if (hspeed <= 1)
            hspeed = 1
    }
    else if (hspeed < -1)
    {
        hspeed += 0.08
        if (hspeed >= -1)
            hspeed = -1
    }
}
else if (hspeed > 2)
{
    hspeed -= 0.08
    if (hspeed <= 1.2)
        hspeed = 1.2
}
else if (hspeed < -1.2)
{
    hspeed += 0.08
    if (hspeed >= -1.2)
        hspeed = -1.2
}
if ((modo_lava == 0 && instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.theme == "castle") || (modo_lava == 0 && instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.theme == "forest" && global.night == 1))
{
    modo_lava = 1
    if (global.style != 0)
    {
        if (global.theme == "castle")
            instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        else
            instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    }
}
else if ((bbox_top - 16) > room_height)
    instance_destroy()
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) <= (obj_lava_water.y - 12) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
    y = (obj_lava_water.y - 20)

