draw_sprite_ext(spr_cond_alert, 0, (camera_x + 54), (camera_y + 98), 17, 3, 0, c_white, 1)
draw_sprite(spr_cond_icons, global.condiciones_count, (camera_x + 65), (camera_y + 103))
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_text((camera_x + 106), (camera_y + 101), string_hash_to_newline(texto[cond_count]))
if (lose == 1)
{
    draw_set_color(make_colour_rgb(255, 112, 51))
    draw_text((camera_x + 106), (camera_y + 127), string_hash_to_newline(scr_language(171)))
}

