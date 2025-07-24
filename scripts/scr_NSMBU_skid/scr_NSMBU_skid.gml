///Sets the skid animations
function scr_NSMBU_skid() {
	/*if global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_skid;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_skid;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_skid;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_skid;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_skid;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_skid; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_skid;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_skid;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_skid;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_skid;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_skid;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_skid; }
	}
*/
}
