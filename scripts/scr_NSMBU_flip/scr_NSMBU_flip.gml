///Sets the Flip animations
function scr_NSMBU_flip() {
	switch global.powerup {
	     case Powerup.SMALL: return spr_NSMBU_mario_small_flip;
	     case Powerup.SUPER: return spr_NSMBU_mario_big_flip;
	     case Powerup.FIRE: return spr_NSMBU_mario_fire_flip;
	     case Powerup.PROPELLER: return spr_NSMBU_mario_helice_flip;
	     case Powerup.ACORN: return spr_NSMBU_mario_arcon_flip;
	     case Powerup.PENGUIN: return 3229; }



}
