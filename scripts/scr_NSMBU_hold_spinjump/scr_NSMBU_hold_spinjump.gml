///Sets the hold_spinjump animations
function scr_NSMBU_hold_spinjump() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_hold_spinjump;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_hold_spinjump;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_hold_spinjump;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_hold_spinjump;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_hold_spinjump;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_hold_spinjump; }


}
