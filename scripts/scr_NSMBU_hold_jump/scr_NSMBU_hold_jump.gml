///Sets the hold_jump animations
function scr_NSMBU_hold_jump() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_hold_jump_right;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_hold_jump;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_hold_jump;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_hold_jump;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_hold_jump;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_hold_jump; }


}
