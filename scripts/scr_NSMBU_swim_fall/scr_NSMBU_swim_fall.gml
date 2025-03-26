///Sets the swim_fall animations
function scr_NSMBU_swim_fall() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_fall;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_fall;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_fall;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_fall;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim_fall;
			case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_swim_idle;}


}
