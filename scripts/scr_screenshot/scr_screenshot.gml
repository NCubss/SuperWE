//function screenshot(exclude) {
//	var surf = surface_create(window_get_width(), window_get_height());
//	surface_set_target(surf);
//	var _matrix = matrix_get(matrix_world);
//	var scale = window_get_width() / view_get_wport(0);
//	matrix_set(matrix_world, matrix_build(
//		camera_x, camera_y, 0,
//		0, 0, 0,
//		scale, scale, 1
//	));
//	// get all background elements
//	var bgs = array_filter(array_map(layer_get_all(), function(lyr) {
//		return layer_background_get_id(lyr);
//	}), function(bg) {
//		return bg != -1 && layer_background_get_visible(bg) && layer_background_get_sprite(bg) != -1;
//	});
//	// sort them by depth
//	array_sort(bgs, function(bg1, bg2) {
//		var l1 = layer_get_depth(layer_get_element_layer(bg1));
//		var l2 = layer_get_depth(layer_get_element_layer(bg2));
//		if (l1 == l2) return 0;
//		if (l1 < l2) return -1;
//		if (l1 > l2) return 1;
//	});
//	// clear screen
//	draw_clear(c_black);
//	// draw them
//	for (var i = 0; i < array_length(bgs); i++) {
//		var bg = bgs[i];
//		var lyr = layer_get_element_layer(bg);
//		var bg_htiled = layer_background_get_htiled(bg);
//		var bg_vtiled = layer_background_get_vtiled(bg);
//		var bg_stretch = layer_background_get_stretch(bg);
		
//		var bg_sprite = layer_background_get_sprite(bg);
//		var bg_index = layer_background_get_index(bg);
//		var bg_xscale = layer_background_get_xscale(bg);
//		var bg_yscale = layer_background_get_yscale(bg);
//		var bg_blend = layer_background_get_blend(bg);
//		var bg_alpha = layer_background_get_alpha(bg);
//		var bg_xoffset = layer_get_x(lyr);
//		var bg_yoffset = layer_get_y(lyr);
		
//		if (bg_stretch) {
//			draw_sprite_stretched_ext(bg_sprite, bg_index, bg_xoffset, bg_yoffset, room_width, room_height, bg_blend, bg_alpha);
//		} else {
//			draw_sprite_tiled_ext(bg_sprite, bg_index, bg_xoffset, bg_yoffset, bg_xscale, bg_yscale, bg_blend, bg_alpha);
//			draw_set_color(c_black);
//			if (!bg_htiled) {
//				draw_rectangle(sprite_get_width(bg_sprite) + bg_xoffset, bg_yoffset, room_width, room_height, false);
//			}
//			if (!bg_vtiled) {
//				draw_rectangle(bg_xoffset, sprite_get_height(bg_sprite) + bg_yoffset, room_width, room_height, false);
//			}
//			draw_set_color(c_white);
//		}
//	}
//	var objs = [];
//	with (all) {
//		if (!array_contains(exclude, id) && visible) {
//			array_push(objs, id);
//		}
//	}
//	array_sort(objs, function(o1, o2) {
//		if (o1.depth == o2.depth) return 0;
//		if (o1.depth < o2.depth) return -1;
//		if (o1.depth > o2.depth) return 1;
//	});
//	for (var i = 0; i < array_length(objs); i++) {
//		with (objs[i]) {
//			event_perform(ev_draw, ev_draw_begin);
//		}
//	}
//	for (var i = 0; i < array_length(objs); i++) {
//		with (objs[i]) {
//			event_perform(ev_draw, ev_draw_normal);
//		}
//	}
//	for (var i = 0; i < array_length(objs); i++) {
//		with (objs[i]) {
//			event_perform(ev_draw, ev_draw_end);
//		}
//	}
//	surface_reset_target();
//	matrix_set(matrix_world, _matrix);
//	//var sprite = sprite_create_from_surface(surf, 0, 0, window_get_width(), window_get_height(), false, false, 0, 0);
//	//surface_free(surf);
//	return sprite_create_from_surface(surf, 0, 0, window_get_width(), window_get_height(), false, false, 0, 0);
//}