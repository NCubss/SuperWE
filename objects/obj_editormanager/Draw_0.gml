var offsetx;
if instance_exists(obj_erase)
{
	if (obj_erase.active == 1 && zoom == 0)
		draw_sprite(spr_bg_goma_de_borrar, anim_goma, camera_x, camera_y)
}
if (global.copy_mode) {
	draw_sprite(spr_bg_copy_mode, 0, camera_x, camera_y);
}
draw_sprite_ext(spr_panel_right, 0, (((camera_right) - 35) + obj_cursor.anim_right), camera_y, 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_banner, 0, camera_x, (camera_y - obj_cursor.anim_top), 1, 1, 0, c_white, 1)

if (instance_exists(obj_erase) && obj_erase.active == 1 && zoom == 0){
	if global.language = 1
		offsetx = string_width(scr_language(156))
	else if global.language = 2
		offsetx = (string_width(scr_language(156)) - 23)
	else if global.language = 3
		offsetx = 16
	else if global.language = 4
		offsetx = (string_width(scr_language(156)) - 12)
	else
		offsetx = 0
	draw_sprite(spr_minitabs_en, 3, ((camera_x + 60) - obj_cursor.anim_left), ((camera_y + 34) - obj_cursor.anim_top))
	draw_set_font(global.font_google);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(((camera_x + 27) + sprite_get_width(spr_minitabs_en)/2 + offsetx - obj_cursor.anim_left), ((camera_y + 33) - obj_cursor.anim_top), scr_language(156))
}
draw_set_halign(fa_left);