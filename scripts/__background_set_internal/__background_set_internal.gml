/**
	@description	GM2 compatibility
	@param			{real} prop			Unknown
	@param			{real} bind			Unknown
	@param			{any} val			Unknown
	@param			{Array} back_info	Unknown
	@returns		{real}
*/
function __background_set_internal(prop, bind, val, back_info) {
	if (back_info[0] == -1) {
		return -1; // erm
	}
	var back_id = back_info[0];
	var layer_id = back_info[1];
	var is_fore = back_info[2];
	if (prop == e__BG.Foreground) {
		// This requires quite a bit of extra logic (we need to modify our layer list)
		if (round(val) != round(is_fore)) {
			// okay, we have a mismatch
			// Get all properties, then set the background again and copy the properties
			var _visible = layer_get_visible(layer_id);
			var index = layer_background_get_sprite(back_id);
			var h_tiled = layer_background_get_htiled(back_id);
			var v_tiled = layer_background_get_vtiled(back_id);
			var stretch = layer_background_get_stretch(back_id);
			var blend = layer_background_get_blend(back_id);
			var alpha = layer_background_get_alpha(back_id);
			var x_scale = layer_background_get_xscale(back_id);
			var y_scale = layer_background_get_yscale(back_id);
			var _x = layer_get_x(layer_id);
			var _y = layer_get_y(layer_id);
			var h_speed = layer_get_hspeed(layer_id);
			var v_speed = layer_get_vspeed(layer_id);
			__background_set_element(bind, _visible, val, index, _x, _y, h_tiled, v_tiled, x_scale, y_scale, stretch, h_speed, v_speed, blend, alpha);
		}
	}
	else {
		switch (prop) {
			case e__BG.Visible:
				layer_set_visible(layer_id, val);
				layer_background_visible(back_id, val);
				break;	
			case e__BG.Index: 		
				layer_background_change(back_id, val);  
				// RK :: if we are setting a sprite then set the background colour to white so it is blending correctly
				if (sprite_exists(val)) { 
					layer_background_blend(back_id, c_white ); 
					layer_background_alpha(back_id, 1 ); 
				}
				break;
			case e__BG.X:
				layer_x(layer_id, val);
				break;
			case e__BG.Y:
				layer_y(layer_id, val);
				break;
			case e__BG.HTiled:
				layer_background_htiled(back_id, val);
				break;
			case e__BG.VTiled:
				layer_background_vtiled(back_id, val);
				break;
			case e__BG.XScale:
				layer_background_xscale(back_id, val);
				break;
			case e__BG.YScale:
				layer_background_yscale(back_id, val);
				break;
			case e__BG.HSpeed:
				layer_hspeed(layer_id, val);
				break;
			case e__BG.VSpeed:
				layer_vspeed(layer_id, val);
				break;
			case e__BG.Blend:
				layer_background_blend(back_id, val);
				break;
			case e__BG.Alpha:
				layer_background_alpha(back_id, val);
				break;
		}
	}
	return -1;
}
