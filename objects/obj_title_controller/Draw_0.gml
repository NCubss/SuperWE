// The logo is split into letters, which are split further into 3 layers
// They are split so they look good if they are moving separately
var logo_pos_x = camera_x + 46;
var logo_pos_y = camera_y + 46;
for (var i = 0; i < 3; i++) {
	draw_sprite(spr_letter_super_s, i, logo_pos_x, logo_pos_y + anim[0]);
	draw_sprite(spr_letter_super_u, i, logo_pos_x, logo_pos_y + anim[1]);
	draw_sprite(spr_letter_super_p, i, logo_pos_x, logo_pos_y + anim[2]);
	draw_sprite(spr_letter_super_e, i, logo_pos_x, logo_pos_y + anim[3]);
	draw_sprite(spr_letter_super_r, i, logo_pos_x, logo_pos_y + anim[4]);
	draw_sprite(spr_letter_we_w, i, logo_pos_x, logo_pos_y + anim[5]);
	draw_sprite(spr_letter_we_e, i, logo_pos_x, logo_pos_y + anim[6]);
}

draw_set_font(global.font_google)
draw_set_color(c_white)
draw_set_halign(fa_left)
//var dis = round(((98 - string_width(string_hash_to_newline(global.my1))) / 2))
//draw_sprite(spr_bg_panel, 0, (camera_x + 13), (camera_y + 201))
//draw_text(((camera_x + 13) + dis), (camera_y + 199), string_hash_to_newline(global.my1))
//draw_set_halign(fa_center)
//draw_sprite(spr_bg_panel, 0, (camera_x + 143), (camera_y + 201))
//draw_text((camera_x + (camera_width / 2)), (camera_y + 199), string_hash_to_newline(global.ctor))
//draw_sprite(spr_bg_panel, 1, (camera_x + 333), (camera_y + 201))
//draw_set_font(global.font_google_legacy)
//draw_text((camera_x + 352), (camera_y + 199), string_hash_to_newline(global.ver))
//draw_set_font(global.font_google)
//draw_set_halign(fa_left)
draw_sprite_stretched(spr_bg_panel, 0, camera_x + 13, camera_y + 201, string_width(global.my1) + 12, 12);
draw_text(camera_x + 19, camera_y + 199, global.my1);
draw_sprite_stretched(spr_bg_panel, 0, camera_center_x - (string_width(global.ctor) / 2) - 6, camera_y + 201, string_width(global.ctor) + 12, 12);
draw_set_halign(fa_center);
draw_text(camera_center_x, camera_y + 199, global.ctor);
draw_sprite_stretched(spr_bg_panel, 0, camera_right - string_width(global.game.version) - 25, camera_y + 201, string_width(global.game.version) + 12, 12);
draw_set_halign(fa_right);
draw_text(camera_right - 19, camera_y + 199, global.game.version);
draw_set_halign(fa_left);