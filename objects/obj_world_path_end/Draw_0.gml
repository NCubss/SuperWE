event_inherited();
draw_sprite_ext(
	on_or_off(Direction.UP),
	1, x + 24, y + 24,
	image_xscale, image_yscale, display_rotation,
	image_blend, image_alpha
);
draw_dot();