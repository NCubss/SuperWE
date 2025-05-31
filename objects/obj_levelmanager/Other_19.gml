/// @description HUD
s_pink_coins = scr_pink_coins()
switch global.style
{
    case 0:
        draw_set_font(global.wdigits_SMB)
        break
    case 1:
        draw_set_font(global.wdigits_SMB3)
        break
    case 2:
        draw_set_font(global.wdigits)
        break
    case 4:
        draw_set_font(global.wdigits_SMB2)
        break
}

draw_set_colour(c_white)
draw_set_alpha(1)
if global.dsm = 0
{
    draw_sprite_ext(spr_coinhud, global.style, (camera_x + 15), (camera_y + 11), 1, 1, 0, c_white, 1)
    draw_text((camera_x + 32), (camera_y + 11), string_hash_to_newline(string_add_zeros(global.coins, 2)))
    if (global.style == GameStyle.SMB3)
        draw_sprite(spr_pmeter, pmeter, (camera_x + 15), (camera_y + 26))
}
else
{
    
    draw_text((camera_x + 36), (camera_y + 11), string_hash_to_newline(string_add_zeros(global.lives, 2)))
    draw_sprite_ext(scr_cont_lives(), global.liveleves, (camera_x + 53), (camera_y + 4), 1, 1, 0, c_white, 1)
   
    draw_text((camera_x + 36), (camera_y + 25), string_hash_to_newline(string_add_zeros(global.coins, 2)))
    if (global.style == GameStyle.SMB3)
        draw_sprite(spr_pmeter, pmeter, (camera_x + 15), (camera_y + 40))
}
if (global.condiciones == 1 && editor == 0){
	if global.dsm = 0
		draw_sprite(spr_cond_hud, global.condiciones_count, (camera_x + 58), (camera_y + 6))
	else
		draw_sprite(spr_cond_hud, global.condiciones_count, (camera_x + 108), (camera_y + 6))
}
draw_text((camera_x + 257), (camera_y + 11), string_hash_to_newline(string_add_zeros(score, 9)))
draw_sprite_ext(spr_timehud, global.style, (camera_x + 337), (camera_y + 11), 1, 1, 0, c_white, 1)
draw_text((camera_x + 346), (camera_y + 11), string_hash_to_newline(string_add_zeros(global.timer, 3)))
if (global.pink_coins_total != 0 && pink_coins_draw == 1)
    draw_sprite_ext(s_pink_coins, global.pink_coins, (camera_x + 235), (camera_y + 22), 1, 1, 0, c_white, 1)
draw_set_alpha(1)

if (global.starcoins > 0) {
	var spr = spr_SMB_starcoin_hud;
	switch (global.style) {
		case GameStyle.SMB3:
			spr = spr_SMB3_starcoin_hud;
			break;
		case GameStyle.SMW:
			spr = spr_SMW_starcoin_hud;
			break;
	}
	for (var i = 0; i < global.starcoins; i++) {
		draw_sprite(
			spr, real(global.starcoin[i]),
			camera_x + 16 + (15 * i),
			camera_y + (global.style != GameStyle.SMB3 ? 24 : 37)
		);
	}
}