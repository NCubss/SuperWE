with (obj_worldmanager) {
	edit = true;
}
// get music
music = get_world_editor_music(obj_worldmanager.style, obj_worldmanager.theme);
// Should the user be able to place or delete tiles right now?
can_interact = true;
// Is the main menu open?
pause = false;
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

with (instance_create_layer(15 * 48, 16 * 48, "map", obj_world_path_end)) {
	gridx = 15;
	gridy = 16;
}
with (instance_create_layer(17 * 48, 16 * 48, "map", obj_world_path_end)) {
	gridx = 17;
	gridy = 16;
}
with (instance_create_layer(15 * 48, 16 * 48, "map", obj_world_start)) {
	gridx = 15;
	gridy = 16;
}
with (instance_create_layer(17 * 48, 16 * 48, "map", obj_world_end)) {
	gridx = 17;
	gridy = 16;
}

camera_set_view_pos(
	view_camera[0],
	(room_width / 2) - (camera_width / 2),
	(room_height / 2) - (camera_height / 2)
);