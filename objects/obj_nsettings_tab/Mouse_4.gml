if (obj_new_settings.can_interact) {
	audio_play_sound(snd_panel_open, 0, false);
	with (obj_new_settings) {
		event_user(2 + other.image_index);
	}
}