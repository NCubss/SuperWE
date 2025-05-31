draw_set_font(global.font_google)
draw_set_color(c_title)
draw_sprite_stretched(sprite_index, 0, camera_x, camera_y, camera_width, camera_height)
draw_text_color((camera_x + 20), (camera_y + 8), string_hash_to_newline(scr_language(88)), c_title, c_title, c_title, c_title, 1)
draw_text_color((camera_x + 20), (camera_y + 38), string_hash_to_newline(scr_language(189)), c_title, c_title, c_title, c_title, 1)

