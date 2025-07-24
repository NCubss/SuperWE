with (obj_worldmanager) {
	edit = true;
}
global.in_world_editor = true;
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
// Whether the user can move the camera right now.
camera_move = true;

// Load the world if there is one
event_user(5);

camera_set_view_pos(
	view_camera[0],
	(room_width / 2) - (camera_width / 2),
	(room_height / 2) - (camera_height / 2)
);