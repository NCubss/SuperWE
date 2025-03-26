/// Sets Walkpipes Animation
function scr_NSMBU_walkpipes() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_walkpipes;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_walkpipes;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_walkpipes;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_walkpipes;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_walkpipes;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_walkpipes; }


}
