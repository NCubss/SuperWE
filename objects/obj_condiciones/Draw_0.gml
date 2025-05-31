var posx;
if global.language = 1
posx = 8
else if global.language = 4
posx = 4
else
posx = 18
draw_sprite_ext(sprite_index, image_index, camera_x, camera_y, 1, 1, 0, c_white, 1)
if (can_draw == 1)
{
    if (global.condiciones_type == 0)
    {
        draw_sprite(spr_cond_icons, global.condiciones_count, (camera_x + 91), (camera_y + 120))
        draw_set_font(global.font_google)
        draw_set_color(c_white)
        draw_text((camera_x + 135), (camera_y + 118), string_hash_to_newline(texto[global.condiciones_count]))
    }
}
draw_set_font(global.font_google);
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text = 1
	draw_text((x + (sprite_width/2) + 45 + posx - string_width(scr_language(84))) , y + 37, scr_language(84))
draw_set_halign(fa_left);
draw_set_valign(fa_left);

