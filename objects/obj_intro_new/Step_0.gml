//zoom += 0.005;
//show_debug_message("{0}, {1}", camera_width, camera_height)
camera_set_view_size(
	view_camera[0],
	default_width / zoom,
	default_height / zoom
);
camera_set_view_pos(
	view_camera[0],
	(default_width - (default_width / zoom)) / 2,
	(default_height - (default_height / zoom)) / 2
);