///Sets the climb_pole animations
function scr_NSMBU_climb_pole() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_climb_pole;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_climb_pole;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_climb_pole;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_climb_pole;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_climb_pole;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_climb_pole; }


}
