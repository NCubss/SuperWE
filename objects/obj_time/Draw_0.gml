var posx;
if global.language = 1
posx = -7
else if global.language = 4
posx = 0
else if global.language = 3
posx = -2
else
posx = 4
draw_sprite_ext(sprite_index, image_index, camera_x, camera_y, 1, 1, 0, c_white, 1)
draw_set_color(c_white)
draw_set_font(global.big_digits)
anim += 0.15
if (can_time == 1)
{
    draw_sprite(spr_cronometro_jump, anim, (camera_x + 99), (camera_y + 73))
    draw_text((camera_x + 100), (camera_y + 112), string_hash_to_newline(string_add_zeros(obj_levelmanager.leveltime, 3)))
}
draw_set_font(global.font_google);
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text = 1
	draw_text((x + (sprite_width/2) + 45 + posx - string_width(scr_language(83))) , y + 37, scr_language(83))
draw_set_halign(fa_left);
draw_set_valign(fa_left);

