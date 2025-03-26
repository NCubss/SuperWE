///Sets the Idle animations
function scr_NSMBU_kick(argument0) {
	if (argument0 == 1) {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_kick;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_kick;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_kick;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_kick;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_kick;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_swim_kick; }}
	else {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_kick;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_kick;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_kick;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_kick;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_kick;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_kick;}}



}
