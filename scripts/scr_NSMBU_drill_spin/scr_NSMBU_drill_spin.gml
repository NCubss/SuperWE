///Sets the drill_spin animations
function scr_NSMBU_drill_spin() {
	switch global.powerup {
	        case Powerup.SUPER: return spr_NSMBU_mario_big_drill_spin;
	        case Powerup.FIRE: return spr_NSMBU_mario_big_drill_spin;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_drill_spin;
	        case Powerup.ACORN: return spr_NSMBU_mario_big_drill_spin;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_big_drill_spin; }



}
