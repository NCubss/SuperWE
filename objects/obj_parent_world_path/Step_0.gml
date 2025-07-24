event_inherited();
if (accessory != noone) {
	accessory.depth = depth - 1;
	if (dragging) {
		if (accessory.object_index == obj_world_start) {
			obj_world_editor.start_x = gridx;
			obj_world_editor.start_y = gridy;
		} else if (accessory.object_index == obj_world_end) {
			obj_world_editor.end_x = gridx;
			obj_world_editor.end_y = gridy;
		}
		with (accessory) {
			gridx = -1;
			gridy = -1;
			maskx = other.maskx;
			masky = other.masky;
			x = other.x;
			y = other.y;
		}
	}
}

