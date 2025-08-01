/// @description Draws Mario
//Draw Mario
if (stompstyle == 1 || (helice_fly > 0 && helice_fly < 5))
{
    draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), 1, 1, 0, c_white, image_alpha)
}
else
    draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), direct, 1, 0, c_white, image_alpha)
if (instance_exists(obj_invincibility) && global.effect_star == 1)
{
	//Make Mario flash
    shader_set(sha_blendreplace)
    if (stompstyle == 1 || (helice_fly > 0 && helice_fly < 5))
        draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), 1, 1, 0, blend_star, obj_invincibility.flashAlpha)
    else
        draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), direct, 1, 0, blend_star, obj_invincibility.flashAlpha)
	//Reset flashing
    shader_reset()
}
if (helice_fly == 4)
    draw_sprite(spr_NSMBU_mario_helice_remolino, image_index, x, (y + 1))
if (global.condiciones == 1 && global.condiciones_clear == 1)
{
    if (global.powerup == 0 || global.powerup == -85)
        var posyy = 1
    else
        posyy = 11
    if (global.style > 1)
        sprite_cond = spr_condicion_obtenida
    else
        sprite_cond = spr_SMB3_condicion_obtenida
    draw_sprite(sprite_cond, global.player, (x - 19), (y - posyy))
}