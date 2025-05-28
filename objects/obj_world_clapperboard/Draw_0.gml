// drawing text on the board
if (!surface_exists(board_surf)) {
	board_surf = surface_create(sprite_width, sprite_height);
}
surface_set_target(board_surf);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_sprite(spr_clapperboard, !obj_worldmanager.edit, 0, 0);
// Chinese glyphs are higher than Latin ones in the font
draw_text(20, global.language == Language.CHINESE ? 14 : 11, text);
draw_set_halign(fa_left);
surface_reset_target();
// finally, draw board and clapper
draw_surface_ext(board_surf, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
draw_sprite_ext(spr_creator_part, 0, x, y, image_xscale, image_yscale, clapper_angle, c_white, 1);
if (hover && ready) {
	scr_anim_hover(x, y - 3, anim, -3);
	anim += 0.3;
}