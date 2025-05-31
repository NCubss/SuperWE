if (global.style == 3)
    var scale = 1
else
    scale = 2
draw_sprite_ext(sprite_index, image_index, round(x), y, scale, scale, 0, c_white, 1)
if (global.dsm == 1)
{
	if global.style = 3
	var posy = 5
	else
	var posy = 0
    draw_set_font(global.numbers_lives)
	draw_set_color(c_white)
    draw_sprite(spr_lives_x, 0, (camera_x + 192), (camera_y + 135-posy))
    draw_text((camera_x) + 205, (camera_y + 119 - posy), string_hash_to_newline((string_add_zeros(global.lives, 2))))
}


