///Sets the skid_left animations
function scr_NSMBU_skid_left() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_skid_left;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_skid_left;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_skid_left;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_skid_left;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_skid_left;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_skid_left; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_skid_left;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_skid_left;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_skid_left;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_skid_left;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_skid_left;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_skid_left; }
	}*/

}
