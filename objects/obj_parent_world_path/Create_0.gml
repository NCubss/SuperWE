event_inherited();
// whether the tile should rotate its path once the user stops grabbing it
rotate_path = false;
// the current rotation
rotation = Direction.UP;
// the current rotation in degrees, for animation
display_rotation = 0;
// whether this tile should have a dot or not
has_dot = true;
// the accessory this path holds, if any
accessory = noone;
valid_path = {
	up: false,
	right: false,
	down: false,
	left: false
}
// disable variants
variants = [];
// modify save and load function
save = function(buffer) {
	buffer_write(buffer, buffer_u8, gridx);
	buffer_write(buffer, buffer_u8, gridy);
	buffer_write(buffer, buffer_u8, rotation);
}
load = function(buffer) {
	gridx = buffer_read(buffer, buffer_u8);
	gridy = buffer_read(buffer, buffer_u8);
	x = gridx * 48;
	y = gridy * 48;
	rotation = buffer_read(buffer, buffer_u8);
	display_rotation = rotation * -90;
}

draw_dot = function() {
	if (has_dot) draw_sprite_ext(
		(valid_path.up || valid_path.right || valid_path.down || valid_path.left)
		? spr_world_path_on
		: spr_world_path_off,
		0, x + 24, y + 24,
		image_xscale, image_yscale,
		display_rotation, image_blend, image_alpha
	);
}
on_or_off = function(dir) {
	var result = false;
	switch ((rotation + dir) % 4) {
		case Direction.UP:
			result = valid_path.up;
			break;
		case Direction.RIGHT:
			result = valid_path.right;
			break;
		case Direction.DOWN:
			result = valid_path.down;
			break;
		case Direction.LEFT:
			result = valid_path.left;
			break;
	}
	return result ? spr_world_path_on : spr_world_path_off;
}