image_speed = 0
if (global.style == 3)
{
    sprite_index = spr_NSMBU_castle_front
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
		image_index = 6
	}
	else if (global.night == 1)
		image_index = 9
    else
        image_index = 0
}
else if (global.theme == "snow")
    image_index = 1
else
    image_index = 0