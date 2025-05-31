var offsetx;
draw_sprite_ext(sprite_index, 1, camera_x, camera_y, (camera_width / 16), (camera_height / 16), 0, c_white, 1)
if (instance_exists(obj_erase) && obj_erase.active == 0){
	if global.language = 1
		offsetx = (string_width(scr_language(23)) - 9)
	else if global.language = 2
		offsetx = (string_width(scr_language(23)) + 5)
	else if global.language = 3
		offsetx = 22
	else if global.language = 4
		offsetx = (string_width(scr_language(23)) + 4)
	else
		offsetx = (string_width(scr_language(23)) - 12.5)
    draw_sprite(spr_minitabs_en, 0, ((camera_x + 60) - obj_cursor.anim_left), ((camera_y + 34) - obj_cursor.anim_top))
	draw_set_font(global.font_google);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(((camera_x + 27) + sprite_get_width(spr_minitabs_en)/2 + offsetx - obj_cursor.anim_left), ((camera_y + 33) - obj_cursor.anim_top), scr_language(23))
}
draw_set_halign(fa_left);