// make an "axis", where -1 is left or top and 1 is right and bottom
var axis_x = real(keyboard_check(ord("D"))) - real(keyboard_check(ord("A")));
var axis_y = real(keyboard_check(ord("S"))) - real(keyboard_check(ord("W")));
// camera speed
var spd = 3;
// increment camera position
if (!pause) {
	if (obj_worldmanager.edit) {
		// mobile camera movement
		if (mouse_button == mb_left && obj_coordinator.modo_android) {
			if (point_in_rectangle(mouse_x, mouse_y, camera_left + 35, camera_top + 36, camera_left + 70, camera_bottom)) {
				axis_x = -1;
			}
			if (point_in_rectangle(mouse_x, mouse_y, camera_right - 70, camera_top + 36, camera_right - 35, camera_bottom)) {
				axis_x = 1;
			}
			if (point_in_rectangle(mouse_x, mouse_y, camera_left + 35, camera_top + 36, camera_right - 35, camera_top + 70)) {
				axis_y = -1;
			}
			if (point_in_rectangle(mouse_x, mouse_y, camera_left + 35, camera_bottom - 35, camera_right - 35, camera_bottom)) {
				axis_y = 1;
			}
		}
		camera_set_view_pos(
			view_camera[0],
			clamp(
				camera_x + axis_x * spd,
				0, room_width - camera_width
			),
			clamp(
				camera_y + axis_y * spd,
				0, room_height - camera_height
			)
		);
	}
	audio_resume_sound(snd_world_editor_overworld);
} else {
	audio_pause_sound(snd_world_editor_overworld);
}
if (can_interact && mouse_down) {
	if (
		point_in_rectangle(mouse_x, mouse_y, camera_x + 36, camera_y + 36, camera_x + 350, camera_y + 216)
		&& !position_meeting(mouse_x, mouse_y, obj_parent_world_res)
		&& selected_variant != -1
	) {
		spawn_variant(mouse_x div 48, mouse_y div 48, selected_variant);
		audio_play_sound(snd_mario_add, 0, false);
	}
}