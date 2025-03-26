///Sets the spincrouch animations
function scr_NSMBU_spincrouch() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_spincrouch;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_spincrouch;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_spincrouch;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_spinjump;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_spinjump;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_spincrouch; }


}
