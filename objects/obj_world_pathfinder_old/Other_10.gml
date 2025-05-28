var i = 0;
show_debug_message("{0}: {1}, {2} (event 0)", i, x, y);
i++;
var obj = obj_world_editor.tile_data[x, y];
if (is_undefined(obj) || !object_is_ancestor(obj.object_index, obj_parent_world_path)) {
	instance_destroy();
	exit;
}
var data = world_path_to_data(obj);
var dir_name;
switch (direction) {
	case Direction.UP:
		dir_name = "up";
		break;
	case Direction.RIGHT:
		dir_name = "right";
		break;
	case Direction.DOWN:
		dir_name = "down";
		break;
	case Direction.LEFT:
		dir_name = "left";
		break;
}
if (data[$ dir_name]) {
	switch (obj.object_index) {
		case obj_world_path_straight:
			array_push(valid_path, {
				x: x,
				y: y,
				up: direction == Direction.UP || direction == Direction.DOWN,
				right: direction == Direction.RIGHT || direction == Direction.LEFT,
				down: direction == Direction.UP || direction == Direction.DOWN,
				left: direction == Direction.RIGHT || direction == Direction.LEFT
			});
			break;
		case obj_world_path_sharp_turn:
		case obj_world_path_round_turn:
			array_push(valid_path, {
				x: x,
				y: y,
				up: direction == Direction.RIGHT || direction == Direction.LEFT,
				right: direction == Direction.UP || direction == Direction.DOWN,
				down: direction != Direction.RIGHT || direction != Direction.LEFT,
				left: direction != Direction.UP || direction != Direction.DOWN,
			});
			// rotate clockwise if the path goes to the right
			if (obj.rotation == opposite_direction(direction)) {
				direction = clockwise(direction);
			// rotate counterclockwise if the path goes to the left
			} else if (obj.rotation == clockwise(direction)) {
				direction = counterclockwise(direction);
			}
			break;
		case obj_world_path_3way:
			// rotate clockwise and put the other path to the side if we can't go straight
			if (obj.rotation == opposite_direction(direction)) {
				array_push(valid_path, {
					x: x,
					y: y,
					up: direction == Direction.DOWN || direction == Direction.LEFT,
					right: direction == Direction.LEFT || direction == Direction.UP,
					down: direction == Direction.UP || direction == Direction.RIGHT,
					left: direction == Direction.RIGHT || direction == Direction.DOWN
				});
				array_push(uncrossed, {
					x: x,
					y: y,
					dir: counterclockwise(direction)
				});
				direction = clockwise(direction);
			// put the other path to the side if we can go straight
			} else {
				array_push(valid_path, {
					x: x,
					y: y,
					up: direction == Direction.UP || direction == Direction.DOWN,
					right: direction == Direction.RIGHT || direction == Direction.LEFT,
					down: direction == Direction.DOWN || direction == Direction.UP,
					left: direction == Direction.LEFT || direction == Direction.RIGHT
				});
				array_push(uncrossed, {
					x: x,
					y: y,
					dir: obj.rotation
				});
			}
			break;
		case obj_world_path_end:
			if (x == obj_world_editor.end_x && y == obj_world_editor.end_y) {
				array_push(valid_path, {
					x: x,
					y: y,
					up: direction == Direction.DOWN,
					right: direction == Direction.LEFT,
					down: direction == Direction.UP,
					left: direction == Direction.RIGHT
				});
				event_user(2);
				exit;
			} else if (obj.rotation == opposite_direction(direction)) {
				if (array_length(uncrossed) == 0) instance_destroy();
				// roll back to the last uncrossed path
				for (
					var idx = array_length(valid_path);
					valid_path[idx].x != array_last(uncrossed).x
					&& valid_path[idx].y != array_last(uncrossed).y;
					idx--
				) {
					array_pop(valid_path);
				}
				direction = array_last(uncrossed).dir;
				event_user(1);
				exit;
			} else {
				array_push(valid_path, {
					x: x,
					y: y,
					up: direction == Direction.UP,
					right: direction == Direction.RIGHT,
					down: direction == Direction.DOWN,
					left: direction == Direction.LEFT
				});
			}
	}
} else {
	// rotate clockwise and try again
	direction = clockwise(direction);
	event_user(0);
	exit;
}
event_user(1);