///Sets the jump1 animations
function scr_NSMBU_jump1() {
	/*if global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_jump1;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_jump1;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_jump1;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_jump1;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_jump1;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_jump1; }
	/*}
	else {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_jump1;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_jump1;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_jump1;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_jump1;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_jump1;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_jump1; }
	} */
}
