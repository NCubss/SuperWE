///Sets Ground Idle Animations
function scr_NSMBU_ground_idle() {
	/*if global.player = 0{
	*/
	if (instance_exists(obj_mario) && obj_mario.isswim == 1) {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_ground;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_ground;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_ground;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_ground;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim_ground;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_swim_idle; }}
	else {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_ground_idle;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_ground_idle;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_ground_idle;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_ground_idle;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_ground_idle;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_ground_idle; }}
	/*}
	else {
	if (instance_exists(obj_mario) && obj_mario.isswim == 1) {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_swim_ground;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_swim_ground;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_swim_ground;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_swim_ground;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_swim_ground;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_swim_idle; }}
	else {
	    switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_ground_idle;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_ground_idle;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_ground_idle;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_ground_idle;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_ground_idle;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_ground_idle; }}
	}
	*/
}
