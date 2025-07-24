if 
	(point_in_rectangle(mouse_x, mouse_y, camera_x + 54, camera_y + 50, camera_x + 329, camera_y + 205)
	&& !instance_exists(obj_new_menu)
	&& !instance_exists(obj_settings_panel)
) {
	audio_play_sound(snd_panel_right_move, 0, false);
	mouse_in = true;
}