///Sets the hold animations
function scr_NSMBU_hold() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_hold;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_hold;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_hold;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_hold;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_hold;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_hold; }


}
