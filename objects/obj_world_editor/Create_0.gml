global.in_world_editor = true;
// play music
audio_play_sound(snd_world_editor_overworld, 0, true);
// Should the user be able to place or delete tiles right now?
can_interact = true;
// Is the main menu open?
pause = false;
// Contains each tile object ID.
tile_data = [[]];

// fill the tile data with false
for (var i = 64; i > 0; i--) {
	for (var j = 64; j > 0; j--) {
		tile_data[i, j] = undefined;
	}
}
with (instance_create(32 * 48, 32 * 48, obj_world_ground)) {
	gridx = 32;
	gridy = 32;
	other.tile_data[32, 32] = id;
}

camera_set_view_pos(
	view_camera[0],
	1536 - (camera_get_view_width(view_camera[0]) / 2),
	1536 - (camera_get_view_height(view_camera[0]) / 2)
);