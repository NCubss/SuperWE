if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && (global.theme == "forest" || global.theme == "beach")))
{
    image_angle -= (6 * sign(hspeed))
    if (vspeed > 1)
    {
        vspeed = 1
        gravity = 0
    }
}
else
{
    image_angle -= (15 * sign(hspeed))
    if (vspeed > 4)
    {
        vspeed = 4
        gravity = 0
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "castle")
{
    instance_create(x, (obj_lava_water.y - 24), obj_splash_lava)
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "forest" && global.night == 1)
{
    instance_create(x, (obj_lava_water.y - 24), obj_splash_posion)
    instance_destroy()
}
if (x < (camera_x - 32) || x > ((camera_right) + 32) || y > ((camera_bottom) + 32))
    instance_destroy()

