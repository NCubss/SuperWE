debug_text = "";
// get the path tile we are on
var obj = instance_position(x, y, obj_parent_world_path);
// exit if it wasn't found
if (obj == noone) {
	instance_destroy();
	exit;
}
debug_text += $"Object found ({object_get_name(obj.object_index)})\n";
if (obj.gridx == obj_world_editor.end_x && obj.gridy == obj_world_editor.end_y) {
	end_found = true;
	debug_text += $"End found!\n";
}
var dir_old = direction;
debug_text += $"Starting direction: {_dir_to_name(dir_old)}\n";
// turn until we can move in a valid direction
while (!world_path_direction_exists(obj, direction)) {
	direction = clockwise(direction);
	// don't backtrack ever
	if (direction == opposite_direction(dir_old)) {
		direction = clockwise(direction);
	}
	// if we have done a full cycle
	if (direction == dir_old) {
		debug_text += $"Full cycle turned, I guess\n";
		go_to_uncrossed();
		exit;
	}
}
// check for valid paths on each direction and mark them as valid
for (var i = 0; i < 4; i++) {
	debug_text += $"Testing direction: {_dir_to_name(i)}\n";
	var nextobj = find_next(i);
	if (nextobj == noone) {
		continue;
	}
	var test = world_can_move_here(obj, find_next(i), i);
	if (test) {
		debug_text += $"Can move {_dir_to_name(i)}\n";
		mark_valid(obj, i);
	}
	// mark uncrossed paths on the start tile
	var on_start = obj.gridx == obj_world_editor.start_x && obj.gridy == obj_world_editor.start_y;
	if (direction != i && (on_start ? true : direction != dir_old) && test) {
		debug_text += $"Marking {_dir_to_name(i)} path as uncrossed\n";
		mark_uncrossed(i);
	}
}
alarm[1] = 60;