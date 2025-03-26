switch (global.style) {
	case GameStyle.SMB:
		switch (global.theme) {
			case "castle":
				sprite_index = spr_SMB_coin_star_dark;
				break;
			case "ghost":
				sprite_index = spr_SMB_coin_star_night;
				break;
			case "underground":
				sprite_index = spr_SMB_coin_star_night;
				break;
			default:
				if (global.night == 1) {
					sprite_index = spr_SMB_coin_star_night;
					break;
				} else {
					sprite_index = spr_SMB_coin_star;
				}
		}
		break;
	case GameStyle.SMB3:
		switch global.theme {
			case "castle":
				sprite_index = spr_SMB3_coin_star_dark;
				break;
			case "ghost":
				sprite_index = spr_SMB3_coin_star_night;
				break;
			case "underground":
				sprite_index = spr_SMB3_coin_star_night;
				break;
			default:
				if (global.night == 1) {
					sprite_index = spr_SMB3_coin_star_night;
					break;
				}
				else {
					sprite_index = spr_SMB3_coin_star;
					break;
				}
		}
		break;
	case GameStyle.NSMBU:
	case GameStyle.SMW:
		sprite_index = spr_coin_star;
		break;
}
active = 0;
image_speed = 0.15;
starcoin_idx = global.starcoins;
global.starcoins++;
global.starcoin[starcoin_idx] = false