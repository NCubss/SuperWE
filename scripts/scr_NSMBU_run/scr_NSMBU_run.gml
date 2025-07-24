///Sets the Run animations
function scr_NSMBU_run() {
	/*if global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_run;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_run;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_run;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_run;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_run;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_run; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_run;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_run;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_run;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_run;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_run;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_run; }
	}*/
}
