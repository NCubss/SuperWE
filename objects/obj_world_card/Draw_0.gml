if (disabled) {
	image_index = 1;
} else if (selected) {
	image_index = 2;
} else {
	image_index = 0;
}
draw_sprite(sprite_index, image_index, x, y - (mouse_in ? 2 : 0));
draw_sprite(spr_world_variants, variant_id, x, y - (mouse_in ? 2 : 0));
if (mouse_in) {
	hover_anim += 0.3;
	// the shadow does take up an extra pixel, so it might look a bit off
	scr_anim_hover(x, y - 2, hover_anim, 0);
}