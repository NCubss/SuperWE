global.in_world_editor = true;

tile_data = [[]];

// fill the tile data with false
for (var i = 64; i > 0; i--) {
	for (var j = 64; j > 0; j--) {
		tile_data[i, j] = false;
	}
}

tile_data[32, 32] = true;

camera_set_view_pos(
	view_camera[0],
	1536 - (camera_get_view_width(view_camera[0]) / 2),
	1536 - (camera_get_view_height(view_camera[0]) / 2)
);