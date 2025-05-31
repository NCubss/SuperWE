if (sprite_index == spr_panel_apariencia_anim)
{
    image_speed = 0
    image_index = 4
    with (instance_create((camera_x + 68), (camera_y + 65), obj_card_logo))
    {
        apariencia = 0
        image_index = 0
        x_pos = 68
        y_pos = 65
    }
    with (instance_create((camera_x + 116), (camera_y + 65), obj_card_logo))
    {
        apariencia = 1
        image_index = 1
        x_pos = 116
        y_pos = 65
    }
    with (instance_create((camera_x + 68), (camera_y + 92), obj_card_logo))
    {
        apariencia = 2
        image_index = 2
        x_pos = 68
        y_pos = 92
    }
    with (instance_create((camera_x + 116), (camera_y + 92), obj_card_logo))
    {
        apariencia = 3
        image_index = 3
        x_pos = 116
        y_pos = 92
    }
}
