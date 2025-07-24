///Sets the wall_slide animations
function scr_NSMBU_wall_slide() {
	/*if global.player = 0{*/
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_wall_slide;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_wall_slide;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_wall_slide;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_wall_slide;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_wall_slide; }
	/*}
	else{
	switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_wallslide;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_wall_slide;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_wall_slide;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_wall_slide;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_wall_slide; }
	}*/

}
