///Sets the acrouch animations
function scr_NSMBU_acrouch() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_acrouch;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_acrouch;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_acrouch;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_acrouch;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_acrouch;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_acrouch; }
	/*}
	else {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_acrouch;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_acrouch;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_acrouch;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_acrouch;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_acrouch;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_acrouch; }
	}
*/
}
