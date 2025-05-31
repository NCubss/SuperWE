/**
	@description	Checks if the mouse is in the window area
	@returns		{real}
*/
function scr_insideview() {
	var cam_x = camera_x;
	var cam_y = camera_y;
	var cam_w = camera_width;
	var cam_h = camera_height;
	return real(
		mouse_y > cam_y
		&& mouse_y < ((cam_y + cam_h) - 1)
		&& mouse_x > cam_x
		&& mouse_x < ((cam_x + cam_w) - 1)
	);
}
