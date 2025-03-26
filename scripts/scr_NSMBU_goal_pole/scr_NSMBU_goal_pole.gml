///Sets the goalpole animations
function scr_NSMBU_goal_pole() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_goalpole;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_goalpole;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_goalpole;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_goalpole;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_goalpole;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_goalpole; }


}
