music = get_world_music(style, theme);
if (edit) {
	audio_stop_sound(music);
	audio_play_sound(get_world_editor_music(style, theme), 0, true);
	instance_destroy(obj_world_mario);
} else {
	audio_stop_sound(get_world_editor_music(style, theme));
	audio_play_sound(music, 0, true);
	instance_create_layer(obj_world_start.x, obj_world_start.y, "mario", obj_world_mario);
}