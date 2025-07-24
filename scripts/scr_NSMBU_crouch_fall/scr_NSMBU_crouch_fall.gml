///Sets the crouch_fall animations
function scr_NSMBU_crouch_fall() {
	/*if global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_crouch_fall;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch_fall;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch_fall;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch_fall;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch_fall;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch_fall; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_crouch_fall;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_crouch_fall;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_crouch_fall;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_crouch_fall;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_crouch_fall;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_crouch_fall; }
	}*/
}
