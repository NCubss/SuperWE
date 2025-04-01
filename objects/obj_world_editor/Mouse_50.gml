if (can_interact) {
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	if (
		point_in_rectangle(mouse_x, mouse_y, cam_x + 36, cam_y + 36, cam_x + 350, cam_y + 216)
		&& tile_data[mouse_x div 48, mouse_y div 48] == undefined
	) {
		audio_play_sound(snd_mario_add, 0, false);
		with (instance_create_layer((mouse_x div 48) * 48, (mouse_y div 48) * 48, "Tiles", obj_world_ground)) {
			gridx = mouse_x div 48;
			gridy = mouse_y div 48;
			other.tile_data[gridx, gridy] = id;
		}
	}
}