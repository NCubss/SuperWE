surface_set_target(back.target);
gpu_surface_blend();
var _matrix = matrix_get(matrix_world);
matrix_set(matrix_world, matrix_build(
	0, 0, 0,
	0, 0, 0,
	2, 2, 1
));
var yy = 7;
var scale = 1.5;
switch (page) {
	case NSPage.HOME:
		draw_big_text(width / 2, yy, lang().settings.title, fa_center, fa_top, scale, ui_alpha);
		break;
	case NSPage.VIDEO:
		draw_big_text(width / 2, yy, lang().new_settings.video.title, fa_center, fa_top, scale, ui_alpha);
		draw_set_alpha(ui_alpha);
		draw_set_color(c_black);
		draw_text(17, 33, lang().new_settings.video.window_scale);
		draw_set_color(c_white);
		draw_text(16, 32, lang().new_settings.video.window_scale);
		draw_set_alpha(1);
		break;
	case NSPage.CONTROLS:
		draw_big_text(width / 2, yy, lang().new_settings.controls.title, fa_center, fa_top, scale, ui_alpha);
		break;
	case NSPage.MISCELLANEOUS:
		draw_big_text(width / 2, yy, lang().new_settings.miscellaneous.title, fa_center, fa_top, scale, ui_alpha);
		break;
	case NSPage.ABOUT:
		draw_big_text(width / 2, yy, lang().new_settings.about.title, fa_center, fa_top, scale, ui_alpha);
		break;
	case NSPage.DISCLAIMER:
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(1 + (width / 2), 33, string_hash_to_newline(lang().disclaimer.title));
		draw_set_color(#e5172a);
		draw_text(width / 2, 32, string_hash_to_newline(lang().disclaimer.title));

		draw_set_color(c_black);
		draw_text(1 + (width / 2), 67, string_hash_to_newline(lang().disclaimer.text));
		draw_set_color(c_white);
		draw_text(width / 2, 66, string_hash_to_newline(lang().disclaimer.text));
		draw_set_halign(fa_left);
		break;
}
matrix_set(matrix_world, _matrix);
gpu_set_blendmode(bm_normal);
surface_reset_target();
