///Sets the groundpound_canceled animations
function scr_NSMBU_groundpound_canceled() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_groundpound_canceled;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_groundpound_canceled;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_groundpound_canceled;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_groundpound_canceled;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_groundpound_canceled;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_groundpound_canceled; }



}
