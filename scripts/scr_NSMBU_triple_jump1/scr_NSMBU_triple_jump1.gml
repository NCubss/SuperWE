///Sets the triple_jump1 animations
function scr_NSMBU_triple_jump1() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_triple_jump1;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_triple_jump1;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_triple_jump1;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_triple_jump1;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_triple_jump1;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_triple_jump1; }


}
