if (dialog == ds_map_find_value(async_load, "id")) {
	if (
		ds_map_find_value(async_load, "status")
		&& ds_map_find_value(async_load, "result") != ""
	) {
		audio_play_sound(snd_aceptar, 0, false);
		global.my1 = string_copy(ds_map_find_value(async_load, "result"), 0, 20);
		obj_intro_new.alarm[3] = 30;
	} else {
		audio_play_sound(snd_wrong, 0, false);
		dialog = get_string_async(lang().login_new.username, "");
	}
}