if (obj_new_settings.can_interact) {
	audio_stop_sound(snd_settings_player_move);
	audio_play_sound(snd_settings_player_move, 0, false);
}
mouse_in = true;