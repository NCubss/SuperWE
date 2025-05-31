if instance_exists(obj_mario)
{
    global.timer = 0
    alarm[10] = 1
    instance_create(camera_x, camera_y, obj_timeup)
    with (instance_create(obj_mario.x, obj_mario.y, obj_deadmario))
        timeup = 1
    with (obj_mario)
        instance_destroy()
    exit
}
else
    alarm[4] = 1

