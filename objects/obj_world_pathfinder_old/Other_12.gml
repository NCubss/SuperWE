for (var i = 0; i < array_length(valid_path); i++) {
	var data = valid_path[i];
	with (obj_world_editor.tile_data[data.x, data.y]) {
		valid_path.up = data.up;
		valid_path.right = data.right;
		valid_path.down = data.down;
		valid_path.left = data.left;
	}
}
with (obj_world_editor) {
	event_user(0);
}