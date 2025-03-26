///Sets the swim_hold animations
function scr_NSMBU_swim_hold() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_hold;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_hold;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_hold;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_hold;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim_hold;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_swim_hold; }


}
