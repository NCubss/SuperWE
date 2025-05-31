if (sprite_index == spr_cronometro)
{
    image_speed = 0
    image_index = 4
    with (instance_create((camera_x + 106), (camera_y + 57), obj_button_time))
        sprite_index = spr_button_time_up
    with (instance_create((camera_x + 106), (camera_y + 130), obj_button_time))
        sprite_index = spr_button_time_down
    instance_create((camera_x + 83), (camera_y + 157), obj_button_ok)
    can_time = 1
}

