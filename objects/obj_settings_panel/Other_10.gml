instance_create((camera_x + 232), (camera_y + 150), obj_st_slider)
instance_create((camera_x + 8), (camera_y + 51), obj_settings_custom)
instance_create((camera_x + 8), (camera_y + 101), obj_button_settings_idioma)
if (obj_coordinator.modo_android == 0)
    instance_create((camera_x + 8), (camera_y + 142), obj_button_settings_estrella)
else
    instance_create((camera_x + 8), (camera_y + 142), obj_button_settings_sm4j)
instance_create((camera_x + 8), (camera_y + 191), obj_selecting_fps)
instance_create((camera_x + 39), (camera_y + 191), obj_button_creditos)
instance_create_depth((camera_x + 102), (camera_y + 191),-19, obj_vsync)
with (instance_create((camera_x + 231), (camera_y + 51), obj_selecting_player))
{
    value = 0
    image_draw = 0
    active = other.active1
}
with (instance_create((camera_x + 260), (camera_y + 51), obj_selecting_player))
{
    value = 1
    image_draw = 1
    active = other.active2
}
with (instance_create((camera_x + 289), (camera_y + 51), obj_selecting_player))
{
    value = 2
    image_draw = 2
    active = other.active3
}
with (instance_create((camera_x + 318), (camera_y + 51), obj_selecting_player))
{
    value = 3
    image_draw = 3
    active = other.active4
}
with (instance_create((camera_x + 347), (camera_y + 51), obj_selecting_player))
{
    value = 4
    image_draw = 4
    active = 2
}
if (obj_coordinator.modo_android == 0)
{
    with (instance_create((camera_x + 231), (camera_y + 101), obj_window_select))
    {
        value = 0
        image_draw = 0
        active = other.act1
    }
    with (instance_create((camera_x + 260), (camera_y + 101), obj_window_select))
    {
        value = 1
        image_draw = 1
        active = other.act2
    }
    with (instance_create((camera_x + 289), (camera_y + 101), obj_window_select))
    {
        value = 2
        image_draw = 2
        active = other.act3
    }
    with (instance_create((camera_x + 318), (camera_y + 101), obj_window_select))
    {
        value = 3
        image_draw = 3
        active = other.act4
    }
    with (instance_create((camera_x + 347), (camera_y + 101), obj_window_select))
    {
        value = 4
        image_draw = 4
        active = 2
    }
}
else
    instance_create((camera_x + 231), (camera_y + 101), obj_button_settings_controls)
	instance_destroy(obj_button_settings_close2)
	instance_create((camera_x + 263), (camera_y + 186), obj_button_settings_close)


