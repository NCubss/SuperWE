/**
	@description	Returns the appropriate player idle sprite.
	@returns		{Asset.GMSprite}
*/
function spr_mario_idle() {
	switch (global.style) {
		case GameStyle.SMB:
			switch (global.player) {
				case Player.MARIO:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB_mario_small_idle;
						case cs_big:
							return spr_SMB_mario_big_idle;
						case cs_fire:
							return spr_SMB_mario_fire_idle;
						case cs_superball:
							return spr_SMB_mario_superball_idle;
						case cs_mega:
							return spr_SMB_mario_mega_idle;
						case cs_hen:
							return spr_SMB_mario_hen_idle;
						case cs_smb2:
							return spr_SMB2_mario_big_idle;
						case cs_link:
							return spr_SMB_link_idle;
					}
				case Player.LUIGI:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB_luigi_small_idle;
						case cs_big:
							return spr_SMB_luigi_big_idle;
						case cs_fire:
							return spr_SMB_luigi_fire_idle;
						case cs_superball:
							return spr_SMB_luigi_superball_idle;
						case cs_mega:
							return spr_SMB_luigi_mega_idle;
						case cs_hen:
							return spr_SMB_luigi_hen_idle;
						case cs_smb2:
							return spr_SMB2_luigi_big_idle;
						case cs_link:
							return spr_SMB_link_idle;
					}
				case Player.TOAD:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB_toad_small_idle;
						case cs_big:
							return spr_SMB_toad_big_idle;
						case cs_fire:
							return spr_SMB_toad_fire_idle;
						case cs_superball:
							return spr_SMB_toad_superball_idle;
						case cs_mega:
							return spr_SMB_toad_mega_idle;
						case cs_hen:
							return spr_SMB_toad_hen_idle;
						case cs_smb2:
							return spr_SMB2_toad_big_idle;
						case cs_link:
							return spr_SMB_link_idle;
					}
				case Player.TOADETTE:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB_toadette_small_idle;
						case cs_big:
							return spr_SMB_toadette_big_idle;
						case cs_fire:
							return spr_SMB_toadette_fire_idle;
						case cs_superball:
							return spr_SMB_toadette_superball_idle;
						case cs_mega:
							return spr_SMB_toadette_mega_idle;
						case cs_hen:
							return spr_SMB_toadette_hen_idle;
						case cs_smb2:
							return spr_SMB2_toadette_big_idle;
						case cs_link:
							return spr_SMB_link_idle;
					}
			}
		case GameStyle.SMB3:
			switch (global.player) {
				case Player.MARIO:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB3_mario_small_idle;
						case cs_big:
							return spr_SMB3_mario_big_idle;
						case cs_fire:
							return spr_SMB3_mario_fire_idle;
						case cs_raccoon:
							return spr_SMB3_mario_raccoon_idle;
						case cs_frog:
							return spr_SMB3_mario_frog_idle;
						case cs_hammer:
							return spr_SMB3_mario_hammer_idle;
					}
				case Player.LUIGI:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB3_luigi_small_idle;
						case cs_big:
							return spr_SMB3_luigi_big_idle;
						case cs_fire:
							return spr_SMB3_luigi_fire_idle;
						case cs_raccoon:
							return spr_SMB3_luigi_raccoon_idle;
						case cs_frog:
							return spr_SMB3_mario_frog_idle;
						case cs_hammer:
							return spr_SMB3_mario_hammer_idle;
					}
				case Player.TOAD:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB3_toad_small_idle;
						case cs_big:
							return spr_SMB3_toad_big_idle;
						case cs_fire:
							return spr_SMB3_toad_fire_idle;
						case cs_raccoon:
							return spr_SMB3_toad_raccoon_idle;
						case cs_frog:
							return spr_SMB3_toad_frog_idle;
						case cs_hammer:
							return spr_SMB3_toad_hammer_idle;
					}
				case Player.TOADETTE:
					switch (global.powerup) {
						case cs_small:
							return spr_SMB3_toadette_small_idle;
						case cs_big:
							return spr_SMB3_toadette_big_idle;
						case cs_fire:
							return spr_SMB3_toadette_fire_idle;
						case cs_raccoon:
							return spr_SMB3_toadette_raccoon_idle;
						case cs_frog:
							return spr_SMB3_toadette_frog_idle;
						case cs_hammer:
							return spr_SMB3_toadette_hammer_idle;
					}
			}
		case GameStyle.SMW:
			switch (global.player) {
				case Player.MARIO:
					switch (global.powerup) {
						case cs_small:
							return spr_mario_small_idle;
						case cs_big:
						case cs_hero:
							return spr_mario_big_idle;
						case cs_pballoon:
							return spr_mario_pballon_idle;
					}
				case Player.LUIGI:
					switch (global.powerup) {
						case cs_small:
							return spr_luigi_small_idle;
						case cs_big:
						case cs_hero:
							return spr_luigi_big_idle;
						case cs_pballoon:
							return spr_luigi_pballon_idle;
					}
				case Player.TOAD:
					switch (global.powerup) {
						case cs_small:
							return spr_toad_small_idle;
						case cs_big:
						case cs_hero:
							return spr_toad_big_idle;
						case cs_pballoon:
							return spr_toad_pballon_idle;
					}
				case Player.TOADETTE:
					switch (global.powerup) {
						case cs_small:
							return spr_toadette_small_idle;
						case cs_big:
						case cs_hero:
							return spr_toadette_big_idle;
						case cs_pballoon:
							return spr_toadette_pballon_idle;
					}
			}
		case GameStyle.NSMBU:
			switch (global.powerup) {
				case cs_small:
					return spr_NSMBU_mario_small_ground_idle;
				case cs_big:
					return spr_NSMBU_mario_big_ground_idle;
				case cs_fire:
					return spr_NSMBU_mario_fire_ground_idle;
				case cs_helice:
					return spr_NSMBU_mario_helice_ground_idle;
				case cs_arcon:
					return spr_NSMBU_mario_arcon_ground_idle;
				case cs_penguin:
					return spr_NSMBU_mario_penguin_ground_idle;
			}
	}
}

