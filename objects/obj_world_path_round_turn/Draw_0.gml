event_inherited();
draw_sprite_ext(
	(valid_path.up || valid_path.right || valid_path.down || valid_path.left)
	? spr_world_path_on
	: spr_world_path_off,
	2, x + 24, y + 24,
	image_xscale, image_yscale, display_rotation,
	image_blend, image_alpha
);
