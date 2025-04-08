event_inherited();
if (holds_start || holds_end) {
	var obj = holds_start ? obj_world_start : (holds_end ? obj_world_end : undefined);
	if (dragging || grabbing) {
		obj.depth = grabbed_depth - 1;
	}
	if (dragging) {
		if (holds_start) {
			obj_world_editor.start_x = gridx;
			obj_world_editor.start_y = gridy;
		} else if (holds_end) {
			obj_world_editor.end_x = gridx;
			obj_world_editor.end_y = gridy;
		}
		with (obj) {
			gridx = -1;
			gridy = -1;
			maskx = other.maskx;
			masky = other.masky;
			x = other.x;
			y = other.y;
		}
	}
}

