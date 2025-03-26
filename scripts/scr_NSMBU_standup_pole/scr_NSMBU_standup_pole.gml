///Sets the standup_pole animations
function scr_NSMBU_standup_pole() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_standup_pole;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_standup_pole;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_standup_pole;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_standup_pole;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_standup_pole;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_standup_pole; }


}
