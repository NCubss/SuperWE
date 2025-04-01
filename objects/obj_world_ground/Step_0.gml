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
		alarm[0] = -1;
		with (obj_world_editor) {
			tile_data[other.gridx, other.gridy] = undefined;
		}
		gridx = -1;
		gridy = -1;
	}
} else if (dragging) {
	x = mouse_x + offsetx;
	y = mouse_y + offsety;
}
if (grabbing || dragging) {
	if (
		maskx != (mouse_x div 48) * 48
		|| masky != (mouse_y div 48) * 48
	) {
		with (obj_world_editor) {
			if (tile_data[mouse_x div 48, mouse_y div 48] != undefined && !other.grabbing) {
				other.maskidx = 1;
			} else {
				other.maskidx = 0;
			}
		}
	}
	if (maskx != (mouse_x div 48) * 48) {
		audio_play_sound(snd_move_object, 0, false);
		maskx = (mouse_x div 48) * 48;
	}
	if (masky != (mouse_y div 48) * 48) {
		audio_play_sound(snd_move_object, 0, false);
		masky = (mouse_y div 48) * 48;
	}
}