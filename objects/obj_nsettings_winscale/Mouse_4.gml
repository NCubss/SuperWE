if (image_index == 2 || (type != NSWindowScale.FULLSCREEN && image_index == 1)) {
	audio_stop_sound(snd_wrong);
	audio_play_sound(snd_wrong, 0, false);
} else {
	audio_stop_sound(snd_nsettings_choose);
	audio_play_sound(snd_nsettings_choose, 0, false);
	switch (type) {
		case NSWindowScale.X1:
		case NSWindowScale.X2:
		case NSWindowScale.X3:
		case NSWindowScale.X4:
			global.w_scale = type + 1;
			with (obj_coordinator) {
				filter = global.w_scale;
				event_user(1);
			}
			break;
		case NSWindowScale.FULLSCREEN:
			window_set_fullscreen(!window_get_fullscreen());
			break;
	}
}