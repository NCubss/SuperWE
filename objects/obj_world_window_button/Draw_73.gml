image_index = real(selected);
draw_self();
if (mouse_in) {
	anim += 0.3;
	scr_anim_hover(x, y, anim, 0);
}
draw_sprite(spr_world_variants, variant_id, x, y);