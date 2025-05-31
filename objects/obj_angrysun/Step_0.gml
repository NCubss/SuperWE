if (ready == 0)
{
    speed = 4
    move_towards_point((camera_x + 64), (camera_y + 48), speed)
    if (x > (camera_x + 56) && x < (camera_x + 72) && y > (camera_y + 40) && y < (camera_y + 56))
    {
        speed = 0
        ready = 1
    }
}
else if (ready == 1)
{
    x = (camera_x + 64)
    y = (camera_y + 48)
    if instance_exists(obj_mario)
    {
        if (global.style == 2 && global.night == 0)
            sprite_index = spr_angrysun_atack
        ready = 2
        alarm[0] = 1
        movement = instance_create(x, y, obj_angrysun_movement)
    }
}
else if instance_exists(movement)
{
    x = (camera_x + movement.x)
    y = (camera_y + movement.y)
}
else
{
    x = (camera_x + 64)
    y = (camera_y + 48)
}

