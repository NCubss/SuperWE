/**
	@description	Checks if the mouse is in the window area
	@returns		{real}
*/
function scr_insideview() {
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	var cam_w = camera_get_view_width(view_camera[0]);
	var cam_h = camera_get_view_height(view_camera[0]);
	return real(
		mouse_y > cam_y
		&& mouse_y < ((cam_y + cam_h) - 1)
		&& mouse_x > cam_x
		&& mouse_x < ((cam_x + cam_w) - 1)
	);
}
