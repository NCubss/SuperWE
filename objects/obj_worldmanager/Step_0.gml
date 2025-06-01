if (edit_prev != edit) {
	event_user(0);
}
if (!edit && instance_exists(obj_world_mario)) {
	camera_set_view_pos(
		view_camera[0],
		// round to prevent a pixel gap between sprites
		clamp(round(lerp(camera_x, obj_world_mario.x + 24 - (camera_width / 2), 0.1) / 0.25) * 0.25, 0, room_width - camera_width),
		clamp(round(lerp(camera_y, obj_world_mario.y - (camera_height / 2), 0.1) / 0.25) * 0.25, 0, room_height - camera_height)
	);
}
edit_prev = edit;