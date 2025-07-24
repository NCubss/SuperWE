if (!obj_world_editor.pause) {
	audio_stop_sound(snd_panel_right_move);
	audio_play_sound(snd_panel_right_move, 0, false);
	hover = true;
}