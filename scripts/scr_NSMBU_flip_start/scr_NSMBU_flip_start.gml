///Sets the Flip Start animations
function scr_NSMBU_flip_start() {
	switch global.powerup {
	     case Powerup.SMALL: return spr_NSMBU_mario_small_flip_start;
	     case Powerup.SUPER: return spr_NSMBU_mario_big_flip_start;
	     case Powerup.FIRE: return spr_NSMBU_mario_fire_flip_start;
	     case Powerup.PROPELLER: return spr_NSMBU_mario_helice_flip_start;
	     case Powerup.ACORN: return spr_NSMBU_mario_arcon_flip_start;
	     case Powerup.PENGUIN: return 3080; }



}
