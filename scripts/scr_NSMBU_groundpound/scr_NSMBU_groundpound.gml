///Sets the groundpound animations
function scr_NSMBU_groundpound() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_groundpound;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_groundpound;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_groundpound;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_groundpound;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_groundpount;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_groundpount; }


}
