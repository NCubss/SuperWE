///@description Create lava or delete it
if (global.theme == "mountain"
&& global.night == 1){
if instance_exists(obj_lava_water) {
	with (obj_lava_water)
		instance_destroy()
}
with (instance_create(camera_x, (room_height - 4), obj_lava_water)){
	switch global.style
	{
	case 0:
		sprite_index = spr_SMB_lava
		break
	case 1:
		sprite_index = spr_SMB3_lava
		break
	case 2:
		sprite_index = spr_SMW_lava
		break
	case 3:
		sprite_index = spr_NSMBU_lava
		break
	}     
}
}
else if global.theme != "castle"
&& global.theme != "beach"
&& global.theme != "forest"{
if instance_exists(obj_lava_water) {
	with (obj_lava_water)
		instance_destroy()
}
}