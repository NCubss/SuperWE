///Sets the swim animations
function scr_NSMBU_swim() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim; }



}
