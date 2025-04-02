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
with (instance_create(16 * 48, 16 * 48, obj_world_ground)) {
	gridx = 16;
	gridy = 16;
	other.tile_data[16, 16] = id;
}

camera_set_view_pos(
	view_camera[0],
	768 - (camera_get_view_width(view_camera[0]) / 2),
	768 - (camera_get_view_height(view_camera[0]) / 2)
);