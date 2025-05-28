enum WMState {
	IDLE,
	MOVING
}
state = WMState.IDLE;
moving_direction = -1;
function move(direction) {
	if (
		state != WMState.IDLE
	) {
		exit;
	}
	var xoffset = 0;
	var yoffset = 0;
	switch (direction) {
		case Direction.UP:
			image_xscale = 1;
			yoffset = -48;
			break;
		case Direction.RIGHT:
			image_xscale = 1;
			xoffset = 48;
			break;
		case Direction.DOWN:
			image_xscale = -1;
			yoffset = 48;
			break;
		case Direction.LEFT:
			image_xscale = -1;
			xoffset = -48;
			break;
	}
	moving_direction = direction;
	var obj = instance_position(x + xoffset, y + yoffset, obj_parent_world_path);
	if (
		x + xoffset < 0
		|| x + xoffset > room_width
		|| y + yoffset < 0
		|| y + yoffset > room_height
		|| obj == noone
		|| !world_can_move_here(obj, moving_direction)
	) {
		image_xscale = 1;
		moving_direction = -1;
		exit;
	}
	state = WMState.MOVING;
	sprite_index = spr_mario_small_walk;
	animator(ac_world_mario_movement, 0, id, "x", x, x + xoffset, 30);
	animator(ac_world_mario_movement, 0, id, "y", y, y + yoffset, 30);
	alarm[0] = 30;
}