if (fallow == obj_lighting)
{
    x = (camera_x + (camera_width / 2))
    y = (camera_y + (camera_height / 2))
}
if (listo == 1)
    scale += 6
if (scale > 300)
{
    if instance_exists(obj_mario)
    {
        with (obj_mario)
            disablecontrols = 0
    }
    instance_destroy()
	exit;	// Stop executing the event if i've been destroyed
}

