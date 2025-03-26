///Sets the jump_star animations
function scr_NSMBU_jump_star() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_jump_star;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_jump_star;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_jump_star;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_jump_star;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_jump_star;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_jump_star; }


}
