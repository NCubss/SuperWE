////Sets the jump3 animations
function scr_NSMBU_jump3() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_jump3;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_jump3;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_jump3;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_jump3;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_jump3;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_jump3; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_jump1;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_jump3;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_jump3;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_jump3;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_jump3;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_jump3; }
	}*/
}
