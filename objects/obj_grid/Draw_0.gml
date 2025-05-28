if ((instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1) || (instance_exists(obj_worldmanager) && obj_worldmanager.edit))
{
	switch global.theme
	{
		case "underground":
		case "castle":
		case "underwater":
		case "ghost":
			color = #FEFEFE;
			break;
		default:
			if (global.night == 1)
			{
				color = #FEFEFE;
				break
			}
			else
				color = #000000;
	}
	/*
	var num_tile_ancho = 384
	var num_ancho = ceil((room_width / num_tile_ancho))
	for (var i = 0; i < num_ancho; i++)
		draw_sprite_ext(spr_tile_grid, 0, (i * num_tile_ancho), 0, 1, 1, 0, color, image_alpha)
	*/
	var color_old = draw_get_color();
	var alpha_old = draw_get_alpha();
	var tile_width = 16;
	var tile_height = 16;
	if (instance_exists(obj_worldmanager)) {
		tile_width = 48;
		tile_height = 48;
		color = #000000;
	}
	var repeat_w = ceil(room_width / tile_width);
	var repeat_h = ceil(room_height / tile_width);
	draw_set_color(color);
	draw_set_alpha(0.15);
	var offset = os_type == os_android ? 0 : 1;
	var page_w = instance_exists(obj_worldmanager) ? 8 : 24;
	var page_h = instance_exists(obj_worldmanager) ? 5 : 14;
	// draw_line() draws a two pixel line regardless of window scale, so
	for (var i = 0; i < repeat_w; i++) {
		draw_line_width(
			(i * tile_width) - offset, 0,
			(i * tile_width) - offset, room_height,
			i % page_w == 0 ? 2 : 1
		);
	}
	for (var i = 0; i < repeat_h; i++) {
		draw_line_width(
			0, (i * tile_height) - offset,
			room_width, (i * tile_height) - offset,
			i % page_h == 0 ? 2 : 1
		);
	}
	draw_set_color(color_old);
	draw_set_alpha(alpha_old);
}

