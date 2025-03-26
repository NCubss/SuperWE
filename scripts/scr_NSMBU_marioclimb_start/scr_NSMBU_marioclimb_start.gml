///Sets the climb_start animations
function scr_NSMBU_marioclimb_start() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_climb_start;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_climb_start;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_climb_start;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_climb_start;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_climb_start; }


}
