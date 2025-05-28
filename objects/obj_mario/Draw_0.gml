/// @description Draws Mario
//Draw Mario
/*
var old_font = draw_get_font();
draw_set_font(global.fnt_big);
draw_text(camera_x, camera_y, string("State {0}", state));
draw_text(camera_x, camera_y + 20, string("Powerup {0}", global.powerup));
draw_text(camera_x, camera_y + 40, string("PMeter {0}", pmeter));
draw_text(camera_x, camera_y + 60, string("Platform {0}", platform_m));
draw_text(camera_x + 100, camera_y, string("Ducking {0}", isduck));
draw_text(camera_x + 100, camera_y + 20, string("Slippery {0}", snow));
draw_text(camera_x + 100, camera_y + 40, string("Direction {0}", direct));
draw_text(camera_x + 100, camera_y + 60, string("Swimming {0}", isswim));
draw_text(camera_x + 200, camera_y, string("CanJump {0}", canjump));
draw_text(camera_x + 200, camera_y + 20, string("Invincible {0}", invincible));
draw_text(camera_x + 200, camera_y + 40, string("Holding {0}", holding));
draw_text(camera_x + 200, camera_y + 60, string("DoubleJump {0}", doublejump));
draw_text(camera_x + 300, camera_y, string("Projectile {0}", firing));
draw_text(camera_x + 300, camera_y + 20, string("Kicking {0}", iamkicking));
draw_text(camera_x + 300, camera_y + 40, string("Skidding {0}", skidnow));
draw_text(camera_x + 300, camera_y + 60, string("StompCount {0}", hitpoint));
draw_text(camera_x + 150, camera_y + 80, string("SmackingNet {0}", netsmack));
draw_set_font(old_font);
*/

if (state == 3 && global.style == 0)
{
	draw_sprite_ext(sprite_index, image_index, (x - (6 * direct)), (y + 1), direct, image_yscale, 0, c_white, image_alpha)
}
else
	draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), direct, 1, 0, c_white, image_alpha)
if (instance_exists(obj_invincibility) && global.effect_star == 1)
{
	//Make Mario flash
	shader_set(sha_blendreplace)
	if (state == ms_climbing && global.style == GameStyle.SMB)
		draw_sprite_ext(sprite_index, image_index, x - (6 * direct), y + 1, direct, image_yscale, 0, blend_star, obj_invincibility.flashAlpha);
	else
		draw_sprite_ext(sprite_index, image_index, round(x) + shake, round(y) + 1, direct, 1, 0, blend_star, obj_invincibility.flashAlpha);
	//Reset flashing
	shader_reset()
}
if (helice_fly == 4)
	draw_sprite(spr_NSMBU_mario_helice_remolino, image_index, x, (y + 1))
if (global.condiciones == 1 && global.condiciones_clear == 1)
{
	if (global.powerup == 0 || global.powerup == cs_link)
		var posyy = 1
	else
		posyy = 11
	if (global.style > GameStyle.SMB3)
		sprite_cond = spr_condicion_obtenida
	else
		sprite_cond = spr_SMB3_condicion_obtenida
	draw_sprite(sprite_cond, global.jugador, (x - 19), (y - posyy))
}
/*
draw_text(x, y, string(hspeed));
draw_text(x+20, y, string(vspeed));

draw_set_color(c_white);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
*/