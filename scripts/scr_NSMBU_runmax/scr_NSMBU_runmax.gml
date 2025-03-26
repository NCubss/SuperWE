/// Sets the Runmax Animations
function scr_NSMBU_runmax() {
	/* global.jugador = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_runmax;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_runmax;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_runmax;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_runmax;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_runmax;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_runmax; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_runmax;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_runmax;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_runmax;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_runmax;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_runmax;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_runmax; }
	}*/
}
