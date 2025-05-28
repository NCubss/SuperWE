// clicked inside the rotate button?
if (point_in_rectangle(mouse_x, mouse_y, bbox_left + 4, bbox_top + 4, bbox_right - 4, bbox_bottom - 4)) {
	// switch rotation
	audio_play_sound(snd_change_arrow, 0, false);
	fire_rotation = clockwise(fire_rotation);
} else {
	// continue doing whatever
	event_inherited();
}


