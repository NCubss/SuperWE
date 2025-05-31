var vx;
if global.language = 0
vx = 10
else if global.language = 2
vx = 14
else if global.language = 3
vx = 6
else 
vx = 2
draw_sprite_ext(sprite_index, image_index, (camera_x + 198), camera_y, 1, 1, 0, c_white, 1)
draw_set_font(global.font_google);
draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if text = 1
	draw_text(x + 55-vx, y + 37, scr_language(85))	
draw_set_halign(fa_left);
draw_set_valign(fa_left);

