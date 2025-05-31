if (!instance_exists(obj_button_home))
{
    with (instance_create((camera_x + 112),(camera_y + 141) , obj_button_home))
    {
        image_index = 3
        depth = -25
    }

}

