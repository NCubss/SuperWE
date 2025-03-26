if (global.style == 3)
{
    sprite_index = spr_NSMBU_flagpole
    image_speed = 0
	if (global.theme == "ground")
		image_index = 0
	else if (global.theme == "underground")
		image_index = 1
	else if (global.theme == "sky")
		image_index = 2
	else if (global.theme == "airship")
		image_index = 3
	else if (global.theme == "ghost")
		image_index = 4
	else if (global.theme == "underwater")
		image_index = 5
	else if (global.theme == "desert")
		image_index = 6
	else if (global.theme == "forest")
		image_index = 7
	else if (global.theme == "snow")
		image_index = 10
    else if (global.theme == "mountain")
	{
    if (global.night == 0)
		image_index = 2
    else
		image_index = 8
	}
	else if (global.night == 1)
		image_index = 9
    else
        image_index = 0
}
else
{
    image_speed = 0
    image_index = 0
}
check = 0
alarm[2] = 10
ready = 0
ready2 = 0
ready3 = 0
apariencia = global.style
count[0] = snd_SMB_count
count[3] = snd_NSMBU_count
count_end[0] = snd_countend
count_end[3] = snd_NSMBU_countend
if (!instance_exists(obj_SMB_flag))
{
	if (global.style == 3)
		flag = instance_create((x - 12), (y + 9), obj_SMB_flag)
	else
		flag = instance_create((x - 12), (y + 16), obj_SMB_flag)
}
if (global.style == 3)
{
	mysolid = instance_create(obj_ground3.x + 4, (obj_ground3.y - 16), obj_solid)
}
else
{
	mysolid = instance_create(obj_ground3.x, (obj_ground3.y - 16), obj_solid)
}
with (mysolid)
{
    if (global.style == 3)
    {
        sprite_index = spr_NSMBU_flag_base
        image_index = 0
    }
    else
    {
        sprite_index = spr_SMB_block_rock
        image_index = 0
    }
    image_speed = 0
    visible = true
}