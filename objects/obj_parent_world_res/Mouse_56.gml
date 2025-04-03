if (obj_world_editor.pause) exit;
// stop grabbing object
if (dragging || grabbing) {
	if (dragging) audio_play_sound(snd_colocar_objectos, 1, false);
	dragging = false;
	grabbing = false;
	grabx = 0;
	graby = 0;
	// stop variant window alarm
	alarm[0] = -1;
	// place object where mouse is if it is on a valid space
	if (obj_world_editor.tile_data[mouse_x div 48, mouse_y div 48] == undefined) {
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
	obj_world_editor.tile_data[other.gridx, other.gridy] = other.id;
	if !(instance_exists(obj_world_window)) obj_world_editor.can_interact = true;
}