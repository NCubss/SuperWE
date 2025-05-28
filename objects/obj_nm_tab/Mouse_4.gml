audio_stop_sound(snd_select_tile);
audio_play_sound(snd_select_tile, 0, false);
pressed = true;
animator(ac_nm_tab, 0, id, "yoffset", yoffset, 4, 10);
with (object_index) {
	if (id == other.id) continue;
	event_user(0);
}
obj_nm_browser.selected_tab = id;