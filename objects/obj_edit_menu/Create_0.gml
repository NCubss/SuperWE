var cam_x = camera_get_view_x(view_get_camera(0));
var cam_y = camera_get_view_y(view_get_camera(0));
if instance_exists(obj_creator_jugar_editar)
    audio_pause_sound(obj_creator_jugar_editar.music_editor)
image_speed = 0
image_index = global.language
instance_create((camera_get_view_x(view_get_camera(0)) + 360), (camera_get_view_y(view_get_camera(0)) + 11), obj_button_close_menu)
if (!instance_exists(obj_button_home))
{
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 212), (camera_get_view_y(view_get_camera(0)) + 50), obj_button_home))
    {
		image_index = 0
        if (room == rm_editor)
        {
            sprite_index = spr_buttons_plays_press
            disabled = 1
        }
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 212), (camera_get_view_y(view_get_camera(0)) + 90), obj_button_home))
    {
        image_index = 3
        if (room == rm_guardabot)
        {
            sprite_index = spr_buttons_plays_press
            disabled = 1
        }
    }
	with (instance_create(cam_x + 212, cam_y + 130, obj_button_home)) {
		image_index = 4;
		if (room == rm_world_editor) {
			sprite_index = spr_buttons_plays_press;
			disabled = 1;
		}
	}
}
instance_create((camera_get_view_x(view_get_camera(0)) + 212), (camera_get_view_y(view_get_camera(0)) + 176), obj_profile)
with (instance_create((camera_get_view_x(view_get_camera(0)) + 307), (camera_get_view_y(view_get_camera(0)) + 187), obj_settings_button))
    image_index = 2
with (instance_create((camera_get_view_x(view_get_camera(0)) + 331), (camera_get_view_y(view_get_camera(0)) + 187), obj_settings_button))
    image_index = 1
with (instance_create((camera_get_view_x(view_get_camera(0)) + 355), (camera_get_view_y(view_get_camera(0)) + 187), obj_settings_button))
    image_index = 3

