var i = 0;
show_debug_message("{0}: {1}, {2} (event 1)", i, x, y);
i++;

switch (direction) {
	case Direction.UP:
		y--;
		break;
	case Direction.RIGHT:
		x++;
		break;
	case Direction.DOWN:
		y++;
		break;
	case Direction.LEFT:
		x--;
		break;
}
event_user(0);