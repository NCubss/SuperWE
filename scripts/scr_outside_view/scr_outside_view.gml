/**
	@description	Check if the position is outside this view
	@returns		{bool}
*/
function outside_view() {
    if (
	x < (__view_get((0 << 0), 0) - 32)
	|| x > ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) + 32)
	|| y < (__view_get((1 << 0), 0) - 32)
	|| y > ((__view_get((1 << 0), 0) + __view_get((3 << 0), 0)) + 32))
        return true;
    else
        return false;
}

/**
	@description	Unknown
	@returns		{undefined}
*/
function outside_view_modelsizable() {
	var view_left = camera_x;
	var view_right = view_left + camera_width;
	var view_top = camera_y;
	var view_bottom = view_top + camera_height;
	// Iterate through all instances of the object
	with (obj_modelsizable) {
		var bbox_Left = x - sprite_width / 2 + sprite_xoffset;
		var bbox_Right = bbox_Left + sprite_width;
		var bbox_Top = y - sprite_height / 2 + sprite_yoffset;
		var bbox_Bottom = bbox_Top + sprite_height;
		// Adjust the bounding box for taller objects
		if (sprite_height > sprite_width) {
			bbox_Top += (sprite_height - sprite_width) / 2;
			bbox_Bottom -= (sprite_height - sprite_width) / 2;
		}
		// Check if the instance is outside the view
		if (
			bbox_Right < view_left - sprite_width
			|| bbox_Left > view_right + sprite_width
			|| bbox_Bottom < view_top - sprite_height
			|| bbox_Top > view_bottom + sprite_height
		) {
			// If the instance is outside the view, deactivate it
			instance_deactivate_object(id)
		} else {
			// If the instance is inside the view, activate it
			instance_activate_object(id)
		}
	}
}

