///Sets the crouch animations
function scr_NSMBU_crouch() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_crouch;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_crouch;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch; }
	}*/
}
