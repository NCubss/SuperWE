if (x < (camera_x - 128) || (x > ((camera_x + camera_width) + 128) && y < (camera_y - 128)) || y > ((camera_y + camera_height) + 128))
    instance_destroy()
if (global.style == 3 && (!instance_exists(obj_deadmario)))
    angle -= (15 * sign(hspeed))
if instance_exists(obj_deadmario)
    speed = 0
switch height
{
    case 1:
        vspeed -= 0.05
        if (vspeed < -0.5)
            vspeed = -0.5
        if (y <= (ystart - 5))
        {
            vspeed = 0
            height = 0
        }
        break
    case 2:
        vspeed -= 0.05
        if (vspeed < -0.5)
            vspeed = -0.5
        if (y <= (ystart - 13))
        {
            vspeed = 0
            height = 0
        }
        break
    case 3:
        vspeed -= 0.05
        if (vspeed < -0.5)
            vspeed = -0.5
        if (y <= (ystart - 21))
        {
            vspeed = 0
            height = 0
        }
        break
    case 4:
        vspeed -= 0.05
        if (vspeed < -0.5)
            vspeed = -0.5
        if (y <= (ystart - 29))
        {
            vspeed = 0
            height = 0
        }
        break
}


