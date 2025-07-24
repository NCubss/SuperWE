if (
	global.cursor == 0
	&& can_press
	&& !global.press_load
	&& !instance_exists(obj_gb_level)
	&& (
		!instance_exists(obj_guardabot)
		|| (
			instance_exists(obj_guardabot)
			&& obj_guardabot.active
		)
	)
) {
    audio_play_sound(snd_abrir_menu, 0, false);
	//with (obj_world_editor) {
	//	pause = true;
	//	can_interact = false;
	//}
    instance_create(camera_x, camera_y, obj_new_menu);
    //obj_cursor.image_index = 0;
	//// disable coursebot stuff
    //if instance_exists(obj_gb_button) {
    //    with (obj_gb_button) {
    //        press = 0;
	//	}
    //}
    //if instance_exists(obj_guardabot) {
    //    with (obj_guardabot) {
    //        can_anim = 0;
	//	}
    //}
	//instance_deactivate_object(obj_menu_editor);
	//instance_deactivate_object(obj_menu_editor_ext);
}