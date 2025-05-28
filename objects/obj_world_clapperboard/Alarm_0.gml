audio_stop_sound(snd_play_start_create);
audio_play_sound(snd_play_start_create, 0, false);
var panels = [
	obj_panel_world_left,
	obj_panel_world_right,
	obj_panel_world_top
];
if (obj_worldmanager.edit) {
	for (var i = 0; i < array_length(panels); i++) {
		with (panels[i]) {
			if (open) {
				event_user(false);
			}
		}
	}
	alarm[2] = 6;
} else {
	instance_activate_layer("ui_back");
	for (var i = 0; i < array_length(panels); i++) {
		with (panels[i]) {
			event_user(true);
		}
	}
}
obj_worldmanager.edit = !obj_worldmanager.edit;