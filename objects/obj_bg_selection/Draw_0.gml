var posx;
if global.language = 1
posx = 7
else if global.language = 3
posx = -4
else
posx = 0
draw_sprite_ext(sprite_index, image_index, camera_x, camera_y, 1, 1, 0, c_white, 1);
draw_set_color(c_white);
draw_set_font(global.font_google);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text = 1
	draw_text((x + (sprite_width/2) + 45 + posx - string_width(scr_language(81))) , y + 37, scr_language(81))
draw_set_halign(fa_left);
draw_set_valign(fa_left);
