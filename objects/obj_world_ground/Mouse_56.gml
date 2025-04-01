if (dragging || grabbing) {
	audio_play_sound(snd_colocar_objectos, 1, false);
	dragging = false;
	grabbing = false;
	grabx = 0;
	graby = 0;
	with (obj_world_editor) {
		if (tile_data[mouse_x div 48, mouse_y div 48] == undefined) {
			other.gridx = mouse_x div 48;
			other.gridy = mouse_y div 48;
			other.x = other.gridx * 48;
			other.y = other.gridy * 48;
		} else {
			other.gridx = other.origx div 48;
			other.gridy = other.origy div 48;
			other.x = other.origx;
			other.y = other.origy;
			other.maskidx = 0;
		}
		other.maskx = x;
		other.masky = y;
		tile_data[other.gridx, other.gridy] = other.id;
		can_interact = true;
	}
}