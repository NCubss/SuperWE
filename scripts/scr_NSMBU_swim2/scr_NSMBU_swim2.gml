///Sets the swim_float animations
function scr_NSMBU_swim2() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_float;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_float;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_float;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_float;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim_float; }


}
