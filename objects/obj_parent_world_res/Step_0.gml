if (obj_world_editor.pause) exit;
if (grabbing) {
	// check if mouse has gone far enough to start
	// dragging
	if (!point_in_rectangle(
		mouse_x, mouse_y,
		grabx - 8, graby - 8,
		grabx + 8, graby + 8
	)) {
		audio_play_sound(snd_drag, 0, false);
		grabbing = false;
		grabx = 0;
		graby = 0;
		dragging = true;
		if (object_is_ancestor(object_index, obj_parent_world_path)) {
			with (obj_world_editor) event_user(1);
		}
		alarm[0] = -1;
		if (object_index == obj_world_start) {
			obj_world_editor.start_x = -1;
			obj_world_editor.stary_y = -1;
		} else if (object_index == obj_world_end) {
			obj_world_editor.end_x = -1;
			obj_world_editor.end_y = -1;
		}
		gridx = -1;
		gridy = -1;
	}
} else if (dragging) {
	x = mouse_x + offsetx;
	y = mouse_y + offsety;
	// destroy window on dragging
	with (obj_world_window) {
		event_user(0);
	}
}
if (dragging) {
	if (
		maskx != (mouse_x div 48) * 48
		|| masky != (mouse_y div 48) * 48
	) {
		instance_deactivate_object(id);
		var inst = instance_position(mouse_x, mouse_y, obj_parent_world_res);
		instance_activate_object(id);
		// set mask to red or blue depending on the validity of the space
		if (object_index == obj_world_start || object_index == obj_world_end) {
			maskidx = real(!(
				inst != noone
				&& object_is_ancestor(inst.object_index, obj_parent_world_path)
				&& !(mouse_x div 48 == obj_world_editor.start_x
				&& mouse_y div 48 == obj_world_editor.start_y)
				|| !(mouse_x div 48 == obj_world_editor.end_x
				&& mouse_y div 48 == obj_world_editor.end_y)
			));
		} else {
			maskidx = real(inst != noone);
		}
	}
	if (maskx != (mouse_x div 48) * 48) {
		audio_stop_sound(snd_move_object);
		audio_play_sound(snd_move_object, 0, false);
		maskx = (mouse_x div 48) * 48;
	}
	if (masky != (mouse_y div 48) * 48) {
		audio_stop_sound(snd_move_object);
		audio_play_sound(snd_move_object, 0, false);
		masky = (mouse_y div 48) * 48;
	}
}