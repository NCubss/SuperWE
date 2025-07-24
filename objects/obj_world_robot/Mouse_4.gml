if (obj_world_editor.pause || (!obj_world_editor.can_interact && !active)) {
	exit;
}
if (active) {
	audio_play_sound(snd_close_guardabot, 0, false);
	with (obj_world_panel_worldbot) {
		event_user(0);
	}
} else {
	audio_play_sound(snd_open_guardabot, 0, false);
	with (instance_create_layer(0, 0, "ui_back", obj_world_panel_worldbot)) {
		depth = min(
			obj_panel_world_left.depth,
			obj_panel_world_top.depth,
			obj_panel_world_right.depth
		) - 1;
	}
}