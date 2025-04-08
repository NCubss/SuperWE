holds_start = gridx == obj_world_editor.start_x && gridy == obj_world_editor.start_y;
holds_end = gridx == obj_world_editor.end_x && gridy == obj_world_editor.end_y;
show_debug_message("{0}, {1} = {2}, {3} (start)", gridx, gridy, obj_world_editor.start_x, obj_world_editor.start_y);
show_debug_message("{0}, {1} = {2}, {3} (end)", gridx, gridy, obj_world_editor.end_x, obj_world_editor.end_y);
event_inherited();
// expect to rotate the path
rotate_path = true;
alarm[1] = 15;
