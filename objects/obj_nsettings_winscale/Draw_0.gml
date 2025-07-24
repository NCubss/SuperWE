surface_set_target(obj_new_settings.back.target);
var _matrix = matrix_get(matrix_world);
matrix_set(matrix_world, matrix_build(
	obj_new_settings.x * -2, obj_new_settings.y * -2, 0,
	0, 0, 0,
	2, 2, 1
));
gpu_surface_blend();
draw_self();
draw_set_alpha(image_alpha);
draw_sprite(spr_settings_display, type, x, y);
draw_set_alpha(1);
if (mouse_in && obj_new_settings.can_interact) {
	draw_hover_anim(x, y, sprite_width, sprite_height - 2);
}
draw_set_halign(fa_left);
gpu_set_blendmode(bm_normal);
matrix_set(matrix_world, _matrix);
surface_reset_target();