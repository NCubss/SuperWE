global.style = irandom_range(0, 3)
global.theme = entorno[irandom_range(0, 11)]
global.night = irandom_range(0, 1)
if (global.style == 3)
{
    with (obj_mario)
    {
        instance_create(x, y, obj_marioU)
        instance_destroy()
    }
}
pos_y = (room_height - 16)
pos_y_limit = pos_y
global.timer = 300
event_user(2)
event_user(3)

