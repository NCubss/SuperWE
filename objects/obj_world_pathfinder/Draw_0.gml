switch (direction) {
	case Direction.UP:
		draw_sprite(spr_change_direction, 2, x, y);
		break;
	case Direction.RIGHT:
		draw_sprite(spr_change_direction, 1, x, y);
		break;
	case Direction.DOWN:
		draw_sprite(spr_change_direction, 0, x, y);
		break;
	case Direction.LEFT:
		draw_sprite(spr_change_direction, 3, x, y);
		break;
}
draw_set_color(c_white);
draw_text(x, y+16, debug_text);
