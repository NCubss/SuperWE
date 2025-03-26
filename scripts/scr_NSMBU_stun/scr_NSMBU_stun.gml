///Sets the stun animations
function scr_NSMBU_stun() {
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_stun;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_stun;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_stun;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_stun;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_stun;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_stun; }


}
