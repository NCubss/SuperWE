///Sets the Walk animations
function scr_NSMBU_walk(argument0) {
	/*if global.player = 0{*/
	if (argument0 == 1) {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_walk;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_walk;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_walk;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_walk;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim_walk;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_swim;}}
	else {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_walk;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_walk;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_walk;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_walk;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_walk;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_walk; }}
	/*}
	else{
	if (argument0 == 1) {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_walk;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_walk;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_walk;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_walk;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim_walk;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_swim;}}
	else {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_walk;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_walk;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_walk;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_walk;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_walk;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_walk; }}
	}*/

}
