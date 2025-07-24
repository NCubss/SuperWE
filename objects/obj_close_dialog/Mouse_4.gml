if (dialog.can_interact) {
	audio_play_sound(snd_back, 0, false);
	with (dialog) {
		event_user(0);
	}
}