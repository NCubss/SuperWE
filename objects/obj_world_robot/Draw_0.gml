if (!active) {
	draw_sprite(spr_card_bg, 0, x, y);
}
image_index = active;
draw_self();
if (mouse_in) {
	draw_hover_anim(x, y + 2);
}