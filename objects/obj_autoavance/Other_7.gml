if (sprite_index == spr_panel_autoavance_anim)
{
    image_speed = 0
    image_index = 4
    with (instance_create((camera_x + 72), (camera_y + 61), obj_button_autoavance))
    {
        if (global.autoscroll == 0)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    with (instance_create((camera_x + 72), (camera_y + 84), obj_button_autoavance))
    {
        sprite = spr_btn_autoscroll_slow
		text = scr_language(40)
        value = 1
        if (global.autoscroll == 1)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    with (instance_create((camera_x + 72), (camera_y + 107), obj_button_autoavance))
    {
        sprite = spr_btn_autoscroll_medium
		text = scr_language(41)
        value = 2
        if (global.autoscroll == 2)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    with (instance_create((camera_x + 72), (camera_y + 130), obj_button_autoavance))
    {
        sprite = spr_btn_autoscroll_fast
		text = scr_language(42)
        value = 3
        if (global.autoscroll == 3)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    instance_create((camera_x + 103), (camera_y + 158), obj_button_ok)
}


