///Sets the crouch_idle animations
function scr_NSMBU_crouch_idle() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_crouch_idle;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch_idle;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch_idle;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch_idle;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch_idle;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch_idle; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_crouch_idle;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch_idle;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch_idle;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch_idle;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch_idle;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch_idle; }
	}*/

}
