var author = global.author
var level_id = global.level_id
var tag1 = global.tag1_pub
var tag2 = global.tag2_pub
var level_name = global.level_name
draw_clear(c_black)
draw_sprite_stretched(spr_mariostart, 0, (camera_x + 20), (camera_y + 16), 344, 49)
draw_set_font(global.font_google)
draw_set_color(c_color)
if (global.nm_play != 0)
{
    distancia = round(((384 - string_width(string_hash_to_newline((level_name)))) / 2));
    draw_text((camera_x + distancia), (camera_y + 28), string_hash_to_newline((level_name)));
	draw_sprite_ext(spr_pausaicons, 3,(camera_x + 290) , (camera_y + 71), 1.5, 1.5, image_angle, image_blend, 0.5);
	draw_sprite_ext(spr_pausaicons, 3,(camera_x + 290) , (camera_y + 83), 1.5, 1.5, image_angle, image_blend, 0.5);
	draw_sprite_ext(spr_user_icon, 0,(camera_x + 343) , (camera_y + 50), 1.5, 1.5, image_angle, c_color, 1);
	draw_text_ext_transformed_colour((camera_x + 305), (camera_y + 69), string_hash_to_newline(tag1), 32,128, 1, 1, image_angle, c_white, c_white, c_white, c_white, 0.5);
	draw_text_ext_transformed_colour((camera_x + 305), (camera_y + 81), string_hash_to_newline(tag2), 32,128, 1, 1, image_angle, c_white, c_white, c_white, c_white, 0.5);
    draw_text((camera_x + 342 - string_width(author)), (camera_y + 48), string_hash_to_newline((author)));
    draw_text((camera_x + 26), (camera_y + 48), string_hash_to_newline((level_id)));
}
else if (global.levelguardabot != "")
{
    var ntext = string_copy(global.levelguardabot, 1, (string_length(global.levelguardabot) - 4))
    distancia = round(((384 - string_width(string_hash_to_newline((ntext)))) / 2))
    draw_text((camera_x + distancia), (camera_y + 28), string_hash_to_newline((ntext)))
	draw_sprite_ext(spr_pausaicons, 3,(camera_x + 290) , (camera_y + 71), 1.5, 1.5, image_angle, image_blend, 0.5);
	draw_sprite_ext(spr_pausaicons, 3,(camera_x + 290) , (camera_y + 83), 1.5, 1.5, image_angle, image_blend, 0.5);
	draw_sprite_ext(spr_user_icon, 0,(camera_x + 343) , (camera_y + 50), 1.5, 1.5, image_angle, c_color, 1);
	draw_text_ext_transformed_colour((camera_x + 305), (camera_y + 69), string_hash_to_newline(tag1), 32,128, 1, 1, image_angle, c_white, c_white, c_white, c_white, 0.5);
	draw_text_ext_transformed_colour((camera_x + 305), (camera_y + 81), string_hash_to_newline(tag2), 32,128, 1, 1, image_angle, c_white, c_white, c_white, c_white, 0.5);
    draw_text((camera_x + 342 - string_width(global.user_gb)), (camera_y + 48), string_hash_to_newline((global.user_gb)));
}
if (global.postnivel != 0)
{
    if (global.postnivel == 1)
	{
        var vertext = scr_language(74)
	}
    else
	{
        vertext = scr_language(75)
	}
    draw_set_color(c_white)
    draw_set_halign(fa_center)
    draw_text((camera_x + (camera_width / 2)), (camera_y + 162), string_hash_to_newline(vertext))
    draw_set_halign(fa_left)
}


