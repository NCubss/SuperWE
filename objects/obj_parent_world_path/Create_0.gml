event_inherited();
// whether the tile should rotate its path once the user stops grabbing it
rotate_path = false;
// the current rotation
rotation = Direction.UP;
// the current rotation in degrees, for animation
display_rotation = 0;
// whether this tile should have a dot or not
has_dot = true;

holds_start = false;
holds_end = false;
valid_path = {
	up: false,
	right: false,
	down: false,
	left: false
}
// disable variants
variants = [];
// modify save function
function save() {
	return {
		obj: object_index,
		gx: gridx,
		gy: gridy,
		rot: rotation
	}
}
function draw_dot() {
	if (has_dot) draw_sprite_ext(
		(valid_path.up || valid_path.right || valid_path.down || valid_path.left)
		? spr_world_path_on
		: spr_world_path_off,
		0, x + 24, y + 24,
		image_xscale, image_yscale,
		display_rotation, image_blend, image_alpha
	);
}
function on_or_off(dir) {
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