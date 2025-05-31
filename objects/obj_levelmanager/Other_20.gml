/// @description NSMBU HUD

s_pink_coins = scr_pink_coins()
draw_set_font(global.wdigits_NSMBU)
draw_set_colour(c_white)
draw_set_alpha(1)
if global.dsm = 0
{
	draw_sprite_ext(spr_NSMBU_coinhud, 0, (camera_x + 13), (camera_y + 10),0.5,0.5,0,c_white,1)
	draw_text_transformed((camera_x + 29), (camera_y + 12), string_hash_to_newline(string_add_zeros(global.coins, 2)),0.5,0.5,0)
}
else
{
  
	draw_text_transformed((camera_x + 29), (camera_y + 9), string_hash_to_newline(string_add_zeros(global.lives, 2)),0.5,0.5,0)
    draw_sprite_ext(spr_NSMBU_cont_lives, global.liveleves, (camera_x + 47), (camera_y + 7.5), 0.5, 0.5, 0, c_white, 1)
    draw_sprite_ext(spr_NSMBU_coinhud, 0, (camera_x + 13), (camera_y + 22),0.5,0.5,0,c_white,1)
	draw_text_transformed((camera_x + 29), (camera_y + 25), string_hash_to_newline(string_add_zeros(global.coins, 2)),0.5,0.5,0)
}
if (global.condiciones == 1 && editor == 0){
	if global.dsm = 0
		draw_sprite(spr_cond_hud, global.condiciones_count, (camera_x + 58), (camera_y + 6))
	else
	    draw_sprite(spr_cond_hud, global.condiciones_count, (camera_x + 108), (camera_y + 6))
}
draw_set_font(global.wdigits_NSMBU_points)
draw_text_transformed((camera_x + 266), (camera_y + 10), string_hash_to_newline(string_add_zeros(score, 9)),0.5,0.5,0)
draw_set_font(global.wdigits_NSMBU)
draw_sprite_ext(spr_NSMBU_timehud, global.style, (camera_x + 338), (camera_y + 10), 0.5, 0.5, 0, c_white, 1)
draw_text_transformed((camera_x + 348), (camera_y + 10), string_hash_to_newline(string_add_zeros(global.timer, 3)),0.5,0.5,0)
if (global.pink_coins_total != 0 && pink_coins_draw == 1)
    draw_sprite_ext(s_pink_coins, global.pink_coins, (camera_x + 240), (camera_y + 24), 0.5, 0.5, 0, c_white, 1)
draw_set_alpha(1)
