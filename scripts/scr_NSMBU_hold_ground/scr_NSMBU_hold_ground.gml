///Sets the hold_ground animations
function scr_NSMBU_hold_ground() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_hold_ground;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_hold_ground;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_hold_ground;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_hold_ground;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_hold_ground;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_hold_ground; }


}
