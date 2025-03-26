///Sets the walkhome Animations
function scr_NSMBU_walkhome() {
	/*if global.jugador = 0{*/
	 switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_mario_small_walkhome;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_walkhome;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_walkhome;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_walkhome;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_walkhome;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_walkhome; }
	/*}
	else{
	 switch global.powerup {
	        case Powerup.SMALL: return spr_NSMBU_toad_small_walkhome;
	        case Powerup.SUPER: return spr_NSMBU_mario_big_walkhome;
	        case Powerup.FIRE: return spr_NSMBU_mario_fire_walkhome;
	        case Powerup.PROPELLER: return spr_NSMBU_mario_helice_walkhome;
	        case Powerup.ACORN: return spr_NSMBU_mario_arcon_walkhome;
	        case Powerup.PENGUIN: return spr_NSMBU_mario_penguin_walkhome; }
	}
*/
}
