event_inherited();
if (fire && collision_rectangle(x + 2, y - 46, x + 14, y, obj_mario, false, false)) {
	with (obj_mario) event_user(0);
}
