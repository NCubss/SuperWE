///Sets the jump2 animations
function scr_NSMBU_jump2() {
	/*if global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_jump2;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_jump2;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_jump2;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_jump2;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_jump2;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_jump2; }
	/*}
	else {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_jump2;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_jump2;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_jump2;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_jump2;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_jump2;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_jump2; }
	}*/
}
