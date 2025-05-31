draw_sprite_stretched(sprite_index, 0, (camera_x + xx), ((camera_y + yy) - anim), ancho, 28)
draw_sprite(spr_toast_icons, icon, ((camera_x + xx) + 5), (((camera_y + yy) + 5) - anim))
draw_set_font(global.font_google)
draw_set_color(c_black)
draw_text(((camera_x + xx) + 30), (((camera_y + yy) + 6) - anim), string_hash_to_newline((texto)))


