if (!obj_world_editor.can_interact) {
	exit;
}
if (!selected) {
	audio_play_sound(snd_select_tile, 0, false);
	obj_world_editor.selected_variant = variant_id;
	selected = true;
} else {
	audio_stop_sound(snd_select_tile);
	audio_play_sound(snd_item_deselect, 0, false);
	obj_world_editor.selected_variant = -1;
	selected = false;
}