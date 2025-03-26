///Sets the standup animations
function scr_NSMBU_standup() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_standup;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_standup;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_standup;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_standup;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_standup;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_standup; }


}
