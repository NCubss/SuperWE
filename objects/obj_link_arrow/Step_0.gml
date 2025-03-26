if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
if (!swimming)
{
    gravity = 0.18
    if (vspeed > 4)
        vspeed = 4
}
else
{
    gravity = 0.02
    if (vspeed > 1)
        vspeed = 1
}
image_angle = direction
if (ready == 1)
{
    if (swimming == 0)
    {
        hspeed = (max(0, (abs(hspeed) - 0.05)) * sign(hspeed))
        if (abs(hspeed) < 0.05)
            hspeed = 0
    }
    else
    {
        hspeed = (max(0, (abs(hspeed) - 0.01)) * sign(hspeed))
        if (abs(hspeed) < 0.01)
            hspeed = 0
    }
}
if ((instance_exists(obj_lava_water) && y > obj_lava_water.y && global.theme == "castle") || (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.theme == "forest" && global.night == 1))
    instance_destroy()
if (x < (camera_get_view_x(view_get_camera(0)) - 128) || (x > ((camera_get_view_x(view_get_camera(0))) + camera_get_view_width(view_get_camera(0)) + 128) && y < (camera_get_view_y(view_get_camera(0))) || y > ((camera_get_view_y(view_get_camera(0))) + camera_get_view_y(view_get_camera(0))) + 128))
    instance_destroy()


