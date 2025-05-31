// The logo is split into letters, which are split further into 3 layers
// They are split so they look good if they are moving separately
var posx = 46;
for (var i = 0; i < 3; i++) {
	draw_sprite(spr_letter_super_s, i, posx, letters_y[0]);
	draw_sprite(spr_letter_super_u, i, posx, letters_y[1]);
	draw_sprite(spr_letter_super_p, i, posx, letters_y[2]);
	draw_sprite(spr_letter_super_e, i, posx, letters_y[3]);
	draw_sprite(spr_letter_super_r, i, posx, letters_y[4]);
	draw_sprite(spr_letter_we_w, i, posx, letters_y[5]);
	draw_sprite(spr_letter_we_e, i, posx, letters_y[6]);
}
draw_sprite_ext(
	spr_logo_shine, 0,
	46 - (((sprite_get_width(spr_logo_shine) * shine_scale) - sprite_get_width(spr_logo_shine)) / 2),
	46 - (((sprite_get_height(spr_logo_shine) * shine_scale) - sprite_get_height(spr_logo_shine)) / 2),
	shine_scale, shine_scale, 0, c_white, letters_light
);
draw_set_alpha(darkness_alpha);
draw_set_color(c_black);
draw_rectangle(
	camera_x,
	camera_y,
	camera_x + camera_width,
	camera_y + camera_height,
	false
);
draw_set_alpha(1);

draw_text_color(16, 188, global.game.version, c_white, c_white, c_white, c_white, version_alpha);