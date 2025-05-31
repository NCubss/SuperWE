event_inherited();
fire = true;
fire_sprite = 0;
fire_index = 0;
fire_rotation = Direction.UP;
function mario_coll() {
	switch (fire_rotation) {
		case Direction.UP:
			return collision_rectangle(x + 2, y - 46, x + 14, y, obj_mario, false, false);
		case Direction.RIGHT:
			return collision_rectangle(x + 16, y + 2, x + 62, y + 14, obj_mario, false, false);
		case Direction.DOWN:
			return collision_rectangle(x + 2, y + 16, x + 14, y + 62, obj_mario, false, false);
		case Direction.LEFT:
			return collision_rectangle(x - 46, y + 2, x, y + 14, obj_mario, false, false);
	}
}