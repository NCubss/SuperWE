// make an "axis", where -1 is left or top and 1 is right and bottom
var axis_x = real(keyboard_check(ord("D"))) - real(keyboard_check(ord("A")));
var axis_y = real(keyboard_check(ord("S"))) - real(keyboard_check(ord("W")));
// camera speed
var spd = 3;
// increment camera position
if (!pause) {
	camera_set_view_pos(
		view_camera[0],
		clamp(
			camera_get_view_x(view_camera[0]) + axis_x * spd,
			0, room_width - camera_get_view_width(view_camera[0])
		),
		clamp(
			camera_get_view_y(view_camera[0]) + axis_y * spd,
			0, room_height - camera_get_view_height(view_camera[0])
		)
	);
	audio_resume_sound(snd_world_editor_overworld);
} else {
	audio_pause_sound(snd_world_editor_overworld);
}
if (can_interact && mouse_down) {
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