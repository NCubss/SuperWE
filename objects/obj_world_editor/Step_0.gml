// make an "axis", where -1 is left or top and 1 is right and bottom
var axis_x = real(keyboard_check(ord("D"))) - real(keyboard_check(ord("A")));
var axis_y = real(keyboard_check(ord("S"))) - real(keyboard_check(ord("W")));
// camera speed
var spd = 3;
// increment camera position
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
if (pause) {
	audio_pause_sound(snd_world_editor_overworld);
} else {
	audio_resume_sound(snd_world_editor_overworld);
}