global.in_world_editor = true;
// play music
audio_play_sound(snd_world_editor_overworld, 0, true);
// Should the user be able to place or delete tiles right now?
can_interact = true;
// Is the main menu open?
pause = false;
// Contains each tile object ID.
tile_data = [[]];
// Start tile position.
start_x = 15;
start_y = 16;
// End tile position.
end_x = 17;
end_y = 16;
// Whether the mouse is down or not.
mouse_down = false;
// The selected variant ID. To get the object you can use get_variant_obj().
selected_variant = -1;

// fill the tile data with false
for (var i = 64; i > 0; i--) {
	for (var j = 64; j > 0; j--) {
		tile_data[i, j] = undefined;
	}
}
with (instance_create_layer(15 * 48, 16 * 48, "Tiles", obj_world_path_end)) {
	gridx = 15;
	gridy = 16;
	other.tile_data[gridx, gridy] = id;
}
with (instance_create_layer(17 * 48, 16 * 48, "Tiles", obj_world_path_end)) {
	gridx = 17;
	gridy = 16;
	other.tile_data[gridx, gridy] = id;
}
with (instance_create_layer(15 * 48, 16 * 48, "Tiles", obj_world_start)) {
	gridx = 15;
	gridy = 16;
	other.start_x = gridx;
	other.start_y = gridy;
}
with (instance_create_layer(17 * 48, 16 * 48, "Tiles", obj_world_end)) {
	gridx = 17;
	gridy = 16;
	other.end_x = gridx;
	other.end_y = gridy;
}

camera_set_view_pos(
	view_camera[0],
	768 - (camera_get_view_width(view_camera[0]) / 2),
	768 - (camera_get_view_height(view_camera[0]) / 2)
);