if (obj_world_editor.pause) exit;
// stop grabbing object
if (dragging || grabbing) {
	if (dragging) {
		audio_play_sound(snd_colocar_objectos, 1, false);
		// place object where mouse is if it is on a valid space
		if (
			(object_index == obj_world_start || object_index == obj_world_end)
			? (
				obj_world_editor.tile_data[mouse_x div 48, mouse_y div 48] != undefined
				&& object_is_ancestor(
					obj_world_editor.tile_data[mouse_x div 48, mouse_y div 48].object_index,
					obj_parent_world_path
				)
				&& mouse_x div 48 != obj_world_editor.start_x
				&& mouse_y div 48 != obj_world_editor.start_y
				&& mouse_x div 48 != obj_world_editor.end_x
				&& mouse_y div 48 != obj_world_editor.end_y
			)
			: obj_world_editor.tile_data[mouse_x div 48, mouse_y div 48] == undefined
		) {
			gridx = mouse_x div 48;
			gridy = mouse_y div 48;
			x = gridx * 48;
			y = gridy * 48;
		// place object back where it originally was if it is on invalid space
		} else {
			gridx = origx div 48;
			gridy = origy div 48;
			x = origx;
			y = origy;
			maskidx = 0;
		}
		maskx = x;
		masky = y;
		if (object_index == obj_world_start) {
			obj_world_editor.start_x = gridx;
			obj_world_editor.start_y = gridy;
		} else if (object_index == obj_world_end) {
			obj_world_editor.end_x = gridx;
			obj_world_editor.end_y = gridy;
		} else {
			obj_world_editor.tile_data[other.gridx, other.gridy] = id;
		}
	}	
	dragging = false;
	grabbing = false;
	grabx = 0;
	graby = 0;
	// stop variant window alarm
	alarm[0] = -1;
	if !(instance_exists(obj_world_window)) obj_world_editor.can_interact = true;
}