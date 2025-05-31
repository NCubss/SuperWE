// automatically close and open whether the eraser is in the area of the panel
if (global.cursor == 2) {
	if (place_meeting(camera_x, camera_y, obj_cursor) && open) {
		event_user(false);
	}
	if (!place_meeting(camera_x, camera_y, obj_cursor) && !open) {
		event_user(true);
	}
}