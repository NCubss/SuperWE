// draw tiles
for (var posx = 0; posx < array_length(tile_data); posx++) {
	for (var posy = 0; posy < array_length(tile_data[posx]); posy++) {
		if (tile_data[posx, posy]) {
			draw_sprite(spr_world_tile, 1, posx * 48, posy * 48);
		}
	}
}

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
draw_sprite(spr_banner, 0, cam_x, cam_y);
draw_sprite(spr_panel_left, 0, cam_x, cam_y);
