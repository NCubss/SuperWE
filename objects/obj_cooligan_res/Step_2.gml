//Set sprites
if (obj_levelmanager.editor == 1)
{
switch global.style {
case 0:
	sprite_index = spr_SMB_cooligan_idle
	break
case 1:
	if (global.night == 0) and (global.theme != "underground") and (global.theme != "ghost"){
		sprite_index = spr_SMB3_cooligan_idle
	}
	else{
		sprite_index = spr_SMB3_cooligan_idle_n
	}
	break
case 2:
	sprite_index = spr_cooligan_idle
	break
case 3:
	sprite_index = spr_NSMBU_cooligan_res
	break
}
}