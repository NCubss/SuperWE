if (global.theme == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
if (global.style == 1 && throw_anim == 1 && image_index >= 2.9)
{
    image_speed = 0
    image_index = 2
    throw_anim = 0
}
cloud_index += 0.125
if (activated == 1)
{
    if instance_exists(obj_mario)
    {
        if (x >= (camera_get_view_x(view_get_camera(0)) + ((camera_get_view_width(view_get_camera(0)) / 2) + lurerange)))
            dir = 1
        else if (x <= ((camera_get_view_x(view_current) + (camera_get_view_width(view_current) / 2)) - lurerange))
            dir = -1
        if (x > obj_mario.x)
            direct = -1
        else
            direct = 1
    }
    var accel = 0.0375
    if (wings == 1)
        accel = 0.0875
    if (dir == 1)
        hspeed -= accel
    else
        hspeed += accel
    var hspcap = 2
    if (hspeed >= 2)
        hspeed = hspcap
    if (hspeed <= -2)
        hspeed = (-hspcap)
    if (wings == 1 && instance_exists(obj_mario))
    {
        if (global.style == 3)
            wings_anim += 0.8
        else
            wings_anim += 0.12
        y = (ystart + (sin((timer * 0.06375)) * 12))
        timer++
    }
}
if (x >= ((camera_get_view_x(view_current) + camera_get_view_width(view_current)) + 64))
{
    if (activated == 1)
        x = (camera_get_view_x(view_current) + (camera_get_view_width(view_current) + 64))
}
else if (x <= (camera_get_view_x(view_current) - 64))
{
    if (activated == 1)
        x = (camera_get_view_x(view_current) - 64)
}
if (x < (camera_get_view_x(view_current) + (camera_get_view_width(view_current) + 64)) && x > (camera_get_view_x(view_current) - 64))
{
    if (activated == 0)
    {
        activated = 1
        if (canthrow == 0)
            canthrow = 1
    }
}
if (activated && canthrow == 1)
{
    alarm[0] = 180
    canthrow = 2
}
