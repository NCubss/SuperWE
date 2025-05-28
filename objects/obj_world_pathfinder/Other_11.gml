var a = instance_position(x, y, obj_parent_world_path);
switch (direction) {
	case Direction.UP:
		y -= 48;
		break;
	case Direction.RIGHT:
		x += 48;
		break;
	case Direction.DOWN:
		y += 48;
		break;
	case Direction.LEFT:
		x -= 48;
		break;
}
if (!world_can_move_here(a, instance_position(x, y, obj_parent_world_path), direction)) {
	instance_destroy();
	exit;
}
event_user(0);