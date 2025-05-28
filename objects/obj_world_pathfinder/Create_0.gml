image_speed = 0;
x = obj_world_editor.start_x * 48;
y = obj_world_editor.start_y * 48;
valid_path = [];
end_found = false;
uncrossed = [];
direction = Direction.UP;
debug_text = "";

function mark_uncrossed(dir) {
	array_push(uncrossed, {
		x: x,
		y: y,
		dir: dir
	});
	debug_text += $"Marking {_dir_to_name(dir)} as uncrossed\n";
}
function mark_valid(obj, dir) {
	var idx = -1;
	// can't fucking use array_find_index for this because GML doesn't support
	// carrying variables into anonymous functions askdjsljflsadklklf
	for (var i = 0; i < array_length(valid_path); i++) {
		if (valid_path[i].obj == obj) {
			idx = i;
			break;
		}
	}
	if (idx == -1) {
		array_push(valid_path, {
			obj: obj,
			up: dir == Direction.UP,
			right: dir == Direction.RIGHT,
			down: dir == Direction.DOWN,
			left: dir == Direction.LEFT
		});
	} else {
		valid_path[idx].up = valid_path[idx].up || dir == Direction.UP;
		valid_path[idx].right = valid_path[idx].right || dir == Direction.RIGHT;
		valid_path[idx].down = valid_path[idx].down || dir == Direction.DOWN;
		valid_path[idx].left = valid_path[idx].left || dir == Direction.LEFT;
	}
	debug_text += $"Marking down direction {_dir_to_name(dir)} as valid\n";
}
function find_next(dir) {
	var xoffset = 0;
	var yoffset = 0;
	switch (dir) {
		case Direction.UP:
			yoffset = -49;
			break;
		case Direction.RIGHT:
			xoffset = 49;
			break;
		case Direction.DOWN:
			yoffset = 49;
			break;
		case Direction.LEFT:
			xoffset = -49;
			break;
	}
	return instance_position(x + xoffset, y + yoffset, obj_parent_world_path);
}
function go_to_uncrossed() {
	if (array_length(uncrossed) == 0) {
		debug_text += "Nowhere else to go, ending\n";
		alarm[2] = 60;
		return;
	}
	var data = array_pop(uncrossed);
	debug_text += $"Going {_dir_to_name(data.dir)}, offset: {(data.x-x)/48}, {(data.y-y)/48}\n";
	x = data.x;
	y = data.y;
	direction = data.dir;
	alarm[0] = 60;
}
function _dir_to_name(dir) {
	switch (dir) {
		case Direction.UP:
			return "Up";
		case Direction.DOWN:
			return "Down";
		case Direction.LEFT:
			return "Left";
		case Direction.RIGHT:
			return "Right";
		default:
			return $"Unknown ({dir})";
	}
}

// start loop
alarm[0] = 60;