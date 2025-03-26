///Sets the walkhold animations
function scr_NSMBU_walkhold() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_walkhold;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_walkhold;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_walkhold;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_walkhold;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_walkhold;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_walkhold; }


}
