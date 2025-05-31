event_inherited()
if ((y + 16) < camera_y)
{
    if (last == 1 && visible == true)
        event_user(1)
    else
        instance_destroy()
}

