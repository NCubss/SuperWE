var nn_text,c_level;
c_level = make_color_rgb(29, 42, 67);
draw_self();
draw_set_font(global.font_google);
draw_set_color(c_level);
nn_text = scr_add3points(global.levelguardabot, 270, 52);
draw_text((camera_x + 52), (camera_y + 54), string_hash_to_newline(nn_text));
draw_text((camera_x + 55), (camera_y + 176), string_hash_to_newline(global.desc));
draw_set_color(c_etiquetas);
draw_text((camera_x + 59), (camera_y + 69), string_hash_to_newline(user));
/*
draw_text((camera_x + 195), (camera_y + 159), string_hash_to_newline(text[global.etiqueta1_temp]));
/**/
draw_text((camera_x + 86), (camera_y + 159), string_hash_to_newline(text_draw[global.etiqueta2_temp]));
draw_sprite_ext(spr_stamps_new, index_stamp, (camera_x + 44), (camera_y + 83), 0.5, 0.5, image_angle, image_blend, image_alpha);
if (global.condiciones == 0)
    draw_text((camera_x + 53), (camera_y + 160), string_hash_to_newline(text[15]));
else
    draw_sprite(spr_cond_hud, global.condiciones_count, (camera_x + 53), (camera_y + 160));
draw_sprite(spr_carteles, global.style, (camera_x + 300), (camera_y + 84));
draw_sprite(spr_cards_entorno, entorno_image, (camera_x + 302), (camera_y + 111));
draw_sprite(spr_day_night_icon, modo_noche, (camera_x + 330), (camera_y + 121));
draw_sprite(spr_date_time_bg, 0, (camera_x + 44), (camera_y + 146));
draw_set_font(global.font_google);
draw_set_color(c_white);
draw_text((camera_x + 47), (camera_y + 144), string_hash_to_newline(fecha));
draw_text((camera_x + 152), (camera_y + 144), string_hash_to_newline(hora));

