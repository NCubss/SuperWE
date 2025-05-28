holds_start = gridx == obj_world_editor.start_x && gridy == obj_world_editor.start_y;
holds_end = gridx == obj_world_editor.end_x && gridy == obj_world_editor.end_y;
event_inherited();
// expect to rotate the path
rotate_path = true;
alarm[1] = 15;