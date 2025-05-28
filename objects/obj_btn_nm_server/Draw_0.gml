draw_self();
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x + 24, y + 31, bool(type) ? "SMM:WE" : "Custom");
if (mouse_in) {
	scr_anim_hover(x, y, hover, 0);
	hover += 0.3;
}
draw_set_halign(fa_left);