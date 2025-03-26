/**
	@function		__background_set_element(bind, vis, fore, back, x, y, h_tiled, y_tiled, x_scale, y_scale, stretch, h_speed, v_speed, blend, alpha)
	@description	Unknown
	@param			{real} bind						Unknown
	@param			{bool} vis						Unknown
	@param			{bool} fore						Unknown
	@param			{real | Asset.GMSprite} back	Unknown
	@param			{real} x						Unknown
	@param			{real} y						Unknown
	@param			{bool} h_tiled					Unknown
	@param			{bool} v_tiled					Unknown
	@param			{real} x_scale					Unknown
	@param			{real} y_scale					Unknown
	@param			{bool} stretch					Unknown
	@param			{real} h_speed					Unknown
	@param			{real} v_speed					Unknown
	@param			{real} blend					Unknown
	@param			{real} alpha					Unknown
*/
function __background_set_element(bind, vis, fore, back, x, y, h_tiled, v_tiled, x_scale, y_scale, stretch, h_speed, v_speed, blend, alpha) {
	// NOTE: this script will only work properly if you're using the standard depth range (-16000 to 16000)
	//var nearest_depth = -15000;
	//var farthest_depth = 15999;
	var nearest_depth = 1000000000;
	var farthest_depth = -1000000000;
	var depth_inc = 100;
	var result;
	result[0] = -1;
	result[1] = -1;
	// Now look at the existing layers in the room to see if we have any foregrounds or backgrounds
	var fg_string = "Compatibility_Foreground_";
	var bg_string = "Compatibility_Background_";
	var col_string = "Compatibility_Colour";
	var fg_len = string_length(fg_string);
	var bg_len = string_length(bg_string);
	var layer_list = layer_get_all();
	var layer_list_length = array_length(layer_list);
	var col_layer = -1;
	var slots;
	var slot;
	var is_foreground;
	for (var i = 0; i < 8; i++) {
		slots[i] = -1;
		is_foreground[i] = false;
	}
	for (var i = 0; i < layer_list_length; i++) {
		var layer_name = layer_get_name(layer_list[i]);
		if (string_pos(fg_string, layer_name) > 0) {
			var slot_chr = string_char_at(layer_name, fg_len + 1);
			if (slot_chr == "") {
				continue;
			}
			slot = real(slot_chr);
			slots[slot] = layer_list[i];
			is_foreground[slot] = true;
			// Could check the contents of this layer to see if it has a single background element on it but that's probably overkill		
		} else if (string_pos(bg_string, layer_name) > 0) {
			var slot_chr = string_char_at(layer_name, bg_len + 1);
			if (slot_chr == "") {
				continue;
			}
			slot = real(slot_chr);
			slots[slot] = layer_list[i];
			is_foreground[slot] = false;
			// Could check the contents of this layer to see if it has a single background element on it but that's probably overkill		
		} else if (string_pos(col_string, layer_name) > 0) {
			// Make sure colour is as deep as it can be
			col_layer = layer_list[i];
			layer_depth(layer_list[i], farthest_depth);
		} else {
			var curr_depth = layer_get_depth(layer_list[i]);
			if (curr_depth < nearest_depth) {
				nearest_depth = curr_depth;
			}
			if (curr_depth > farthest_depth) {
				farthest_depth = curr_depth;
			}
		}
	}
	// Reassign depths
	farthest_depth += depth_inc + 1000; // add some margin for the background layers
	nearest_depth -= depth_inc;
	//farthest_depth = max(farthest_depth, 15999);
	//nearest_depth = min(nearest_depth, -15000);
	farthest_depth = max(farthest_depth, 2147483600);
	nearest_depth = min(nearest_depth, -2147482000);
	for (var i = 0; i < 8; i++) {
		if (slots[i] != -1)
		{
			var _depth = 0;
			if (is_foreground[i] == true) {
				_depth = nearest_depth - (i * depth_inc);
			} else {
				_depth = (farthest_depth - depth_inc) - (slot * depth_inc);
			}
			layer_depth(slots[i], _depth);
		}
	}
	if (col_layer != -1) {
		layer_depth(col_layer, farthest_depth);
	}
	// Construct our layer name and depth
	var layer_name;
	var _layer_depth;
	if (bind == -1) {
		// This is the background colour layer
		layer_name = col_string;
		_layer_depth = farthest_depth;
	} else {
		if (fore == true) {
			layer_name = fg_string + string(bind);
			_layer_depth = nearest_depth - (bind * depth_inc);
		} else {
			layer_name = bg_string + string(bind);
			_layer_depth = (farthest_depth - depth_inc) - (bind * depth_inc); // reserve 16000 for imported colour
		}
	}
	// If we already have a background in this slot, nuke it
	var layer_id;
	if (bind == -1) {
		layer_id = col_layer;
	} else {
		layer_id = slots[bind];
	}
	if (layer_id != -1) {
		layer_destroy(layer_id);
	}
	layer_id = layer_create(_layer_depth, layer_name);
	// Set our layer properties
	layer_x(layer_id, x);
	layer_y(layer_id, y);
	layer_hspeed(layer_id, h_speed);
	layer_vspeed(layer_id, v_speed);
	// Construct our new background element
	var back_el = layer_background_create(layer_id, back);
	layer_background_visible(back_el, vis);
	layer_background_htiled(back_el, h_tiled);
	layer_background_vtiled(back_el, v_tiled);
	layer_background_xscale(back_el, x_scale);
	layer_background_yscale(back_el, y_scale);
	layer_background_stretch(back_el, stretch);
	layer_background_blend(back_el, blend);
	layer_background_alpha(back_el, alpha);

	result[0] = back_el;
	result[1] = layer_id;

	return result;
}
