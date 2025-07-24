draw_self();
draw_set_color(color);
var height = string_height("hello this is ncubs why are you reading this");
if (type == WorldbotButton.LOAD) {
	draw_text_ext(x + 14, y + 1, text, height, 111);
} else {
	draw_set_valign(fa_middle);
	draw_text_ext(x + 14, y + 16, text, height, 56);
	draw_set_valign(fa_top);
}
draw_set_color(c_white);
if (mouse_in && enabled) {
	draw_hover_anim(x, y, sprite_width, sprite_height - 2);
}