if (obj_new_settings.can_interact) {
	audio_play_sound(snd_back, 0, false);
	with (obj_new_settings) {
		event_user(1 + NSPage.HOME);
	}
}