draw_set_font(global.font_google)
draw_set_color(c_letter)
draw_set_halign(fa_center)
draw_text_color(x, (y + 32), string_hash_to_newline(lang().disclaimer.title), c_title, c_title, c_title, c_title, 1)
draw_text(x, (y + 66), string_hash_to_newline(lang().disclaimer.text))
draw_set_halign(fa_left)

