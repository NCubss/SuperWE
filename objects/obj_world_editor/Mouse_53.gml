if (
	can_interact
	&& !position_meeting(mouse_x, mouse_y, [
		obj_panel_world_left,
		obj_panel_world_top,
		obj_panel_world_right
	])
) mouse_down = true;