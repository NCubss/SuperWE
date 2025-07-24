image_index = active;
var matrix = matrix_get(matrix_world);
with (obj_dialog_generic) {
	surface_set_target(back.target);
	matrix_set(matrix_world, matrix_build(
		x * -2, y * -2, 0,
		0, 0, 0,
		2, 2, 1
	));
}
y += offy;
draw_self();
y -= offy;
draw_set_color(c_black);
draw_text(x + sprite_width + 6, y + 1, label);
draw_set_color(label_color);
draw_text(x + sprite_width + 5, y, label);
draw_set_color(c_white);
matrix_set(matrix_world, matrix);
surface_reset_target();