///Sets the skid_right animations
function scr_NSMBU_skid_right() {
	/*if global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_skid_right;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_skid_right;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_skid_right;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_skid_right;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_skid_right;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_skid_right; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_skid_right;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_skid_right;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_skid_right;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_skid_right;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_skid_right;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_skid_right; }
	}*/

}
