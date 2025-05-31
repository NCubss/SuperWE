draw_set_font(global.font_google)
draw_set_color(c_white)
draw_sprite_stretched(sprite_index, 0, camera_x, camera_y, camera_width, camera_height)
draw_sprite(spr_sett_icon, 0, (camera_x + 6), (camera_y + 7))
draw_set_color(c_letters)
draw_text((camera_x + 24), (camera_y + 7), string_hash_to_newline(settings))
if (global.keymod == 0)
{
draw_text((camera_x + 231), (camera_y + 84), string_hash_to_newline(ventana))
draw_text((camera_x + 8), (camera_y + 126), string_hash_to_newline(sombras))
draw_text((camera_x + 8), (camera_y + 34), string_hash_to_newline(controls))
draw_text((camera_x + 8), (camera_y + 84), string_hash_to_newline(language))
draw_text((camera_x + 231), (camera_y + 34), string_hash_to_newline(character))
draw_text((camera_x + 231), (camera_y + 126), string_hash_to_newline(sonidos))
draw_set_color(c_grey)
draw_text((camera_x + 8), (camera_y + 175), string_hash_to_newline(global.descver))
draw_set_color(c_letters)
}
else if (global.keymod == 1)
{
	draw_text((camera_x + 145), (camera_y + 7), string_hash_to_newline(scr_language(187)))
}
