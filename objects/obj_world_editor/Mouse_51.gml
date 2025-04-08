if (can_interact) {
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	if (
		point_in_rectangle(mouse_x, mouse_y, cam_x + 36, cam_y + 36, cam_x + 350, cam_y + 216)
		&& tile_data[mouse_x div 48, mouse_y div 48] != undefined
		&& (
			mouse_x div 48 != start_x
			|| mouse_y div 48 != start_y
		) && (
			mouse_x div 48 != end_x
			|| mouse_y div 48 != end_y
		)
	) {
		audio_play_sound(snd_erase_clean, 1, false);
		instance_destroy(tile_data[mouse_x div 48, mouse_y div 48]);
	}
}