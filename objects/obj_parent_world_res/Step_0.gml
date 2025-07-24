if (obj_world_editor.pause) exit;
if (grabbing) {
	// check if mouse has gone far enough to start dragging
	if (!point_in_rectangle(
		mouse_x, mouse_y,
		grabx - 8, graby - 8,
		grabx + 8, graby + 8
	)) {
		// start dragging
		event_user(3);
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
		//if (object_is_ancestor(object_index, obj_parent_world_accessory)) {
		//	maskidx = real(!(
		//		inst != noone
		//		&& (object_is_ancestor(inst.object_index, obj_parent_world_path) || object_is_ancestor(inst.object_index, obj_parent_world_accessory))
		//		&& !(mouse_x div 48 == obj_world_editor.start_x
		//		&& mouse_y div 48 == obj_world_editor.start_y)
		//		&& !(mouse_x div 48 == obj_world_editor.end_x
		//		&& mouse_y div 48 == obj_world_editor.end_y)
		//	));
		//} else {
		//	maskidx = real(inst != noone);
		//}
	// should we check again if space is valid?
	var recheck_validity = false;
	if (maskx != (mouse_x div 48) * 48) {
		audio_stop_sound(snd_move_object);
		audio_play_sound(snd_move_object, 0, false);
		maskx = (mouse_x div 48) * 48;
		recheck_validity = true;
	}
	if (masky != (mouse_y div 48) * 48) {
		audio_stop_sound(snd_move_object);
		audio_play_sound(snd_move_object, 0, false);
		masky = (mouse_y div 48) * 48;
		recheck_validity = true;
	}
	if (recheck_validity) {
		// set mask to red or blue depending on the validity of the space
		// (result is flipped because the first frame represents TRUE, then FALSE)
		maskidx = real(!can_put_here(maskx, masky));
	}
}