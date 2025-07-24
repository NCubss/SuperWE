music = get_world_music(style, theme);
if (edit) {
	audio_stop_sound(music);
	audio_play_sound(get_world_editor_music(style, theme), 0, true);
	instance_destroy(obj_world_mario);
	if (obj_coordinator.modo_android) {
		with (obj_coordinator) {
			event_user(4);
		}
	}
	with (obj_world_editor) {
		can_interact = true;
	}
	layer_background_speed(bg, 0);
	layer_background_index(bg, 0);
} else {
	audio_stop_sound(get_world_editor_music(style, theme));
	audio_play_sound(music, 0, true);
	instance_create_layer(obj_world_start.x, obj_world_start.y, "mario", obj_world_mario);
	animator(ac_world_hud, 0, id, "hud_alpha", 0, 1, 30);
	animator(ac_world_hud, 0, id, "hud_xoffset", -10, 0, 30);
	if (obj_coordinator.modo_android) {
		with (obj_coordinator) {
			event_user(2);
		}
	}
	with (obj_world_editor) {
		can_interact = false;
	}
	layer_background_speed(bg, 4);
}