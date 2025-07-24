///Sets the crouch_jump animations
function scr_NSMBU_crouch_jump() {
	/* global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_crouch_jump;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch_jump;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch_jump;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch_jump;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch_jump;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch_jump; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_crouch_jump;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch_jump;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch_jump;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch_jump;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch_jump;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch_jump; }
	}*/
}
