if (x > (camera_x - 32) && x < ((camera_x + camera_width) + 32))
{
    if instance_exists(obj_lava_water)
    {
        if (obj_lava_water.y > (ystart + 16))
        {
            visible = true
            vspeed = -4
            alarm[2] = 10
        }
        else
            alarm[1] = 10
    }
    else
    {
        visible = true
        vspeed = -4
        alarm[2] = 10
    }
}
else
    alarm[1] = 10
