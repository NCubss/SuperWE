// The logo is split into letters, which are split further into 3 layers
// They are split so they look good if they are moving separately
var logo_pos_x = camera_get_view_x(view_get_camera(0)) + 46;
var logo_pos_y = camera_get_view_y(view_get_camera(0)) + 46;
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
var dis = round(((98 - string_width(string_hash_to_newline(global.my1))) / 2))
draw_sprite(spr_bg_panel, 0, (camera_get_view_x(view_get_camera(0)) + 13), (camera_get_view_y(view_get_camera(0)) + 201))
draw_text(((camera_get_view_x(view_get_camera(0)) + 13) + dis), (camera_get_view_y(view_get_camera(0)) + 199), string_hash_to_newline(global.my1))
draw_set_halign(fa_center)
draw_sprite(spr_bg_panel, 0, (camera_get_view_x(view_get_camera(0)) + 143), (camera_get_view_y(view_get_camera(0)) + 201))
draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (camera_get_view_y(view_get_camera(0)) + 199), string_hash_to_newline(global.ctor))
draw_sprite(spr_bg_panel, 1, (camera_get_view_x(view_get_camera(0)) + 333), (camera_get_view_y(view_get_camera(0)) + 201))
draw_set_font(global.font_google_legacy)
draw_text((camera_get_view_x(view_get_camera(0)) + 352), (camera_get_view_y(view_get_camera(0)) + 199), string_hash_to_newline(global.ver))
draw_set_font(global.font_google)
draw_set_halign(fa_left)