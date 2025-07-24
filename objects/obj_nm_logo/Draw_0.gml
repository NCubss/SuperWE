/*
gpu_set_blendmode(bm_add);
draw_set_color(c_white);
draw_set_font(global.fnt_big);
var _matrix = matrix_get(matrix_world);
matrix_set(matrix_world, matrix_build(
	0, 0, 0,
	0, 0, 0,
	2, 2, 1
));
var text_width = 0;
for (var i = 0; i < string_length("Course World"); i++) {
	var letter = string_char_at("Course World", i + 1);
	sprite_index = font_get_info(global.fnt_big).spriteIndex;
	image_index = font_get_info(global.fnt_big).glyphs[$ letter].char;
	var uvs = sprite_get_uvs(sprite_index, image_index);
	text_width -= (uvs[0] - uvs[2]) / texture_get_texel_width(sprite_get_texture(sprite_index, image_index));
	if (i < string_length("Course World") - 1) text_width += sep;
}
var cx = (x / 2) - (text_width / 2);
for (var i = 0; i < string_length("Course World"); i++) {
	var letter = string_char_at("Course World", i + 1);
	draw_text(cx, (y / 2), letter);
	sprite_index = font_get_info(global.fnt_big).spriteIndex;
	image_index = font_get_info(global.fnt_big).glyphs[$ letter].char;
	var uvs = sprite_get_uvs(sprite_index, image_index);
	cx -= (uvs[0] - uvs[2]) / texture_get_texel_width(sprite_get_texture(sprite_index, image_index));
	cx += sep;
}
gpu_set_blendmode(bm_normal);
matrix_set(matrix_world, _matrix);
draw_set_font(global.font_google);
*/
draw_big_text(x, y, text, fa_center, fa_middle, 2, 1, c_white, sep, bm_add);