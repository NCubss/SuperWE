if (instance_exists(obj_menu_pausa) || instance_exists(obj_settings_panel)) {
	// stop ticking alarms down if paused
	for (var i = 0; i < array_length(alarm); i++) {
		alarm[i] += 1;
	}
	audio_pause_sound(snd_guardabot);
} else {
	audio_resume_sound(snd_guardabot);
}