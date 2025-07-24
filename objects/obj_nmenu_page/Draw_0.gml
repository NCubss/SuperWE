if (selected) {
	sprite_index = spr_nmenu_page_selected;
	draw_set_color(c_white);
} else {
	sprite_index = spr_nmenu_page;
	draw_set_color(c_black);
}
draw_self();
var xx = 0;
switch (size) {
	case NMMPageButtonSize.FULL:
		xx = x + 96.5;
		break;
	case NMMPageButtonSize.MEDIUM:
		xx = x + 78.5;
		break;
}
draw_set_halign(fa_center);
draw_set_alpha(image_alpha);
draw_text(xx, y + 7.5, text);
draw_set_alpha(1);
draw_set_halign(fa_left);
if (mouse_in) {
	draw_hover_anim(x, y, bbox_right - bbox_left, sprite_height - 2);
}