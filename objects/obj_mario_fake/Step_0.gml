input_axis = (keyboard_check(ord("D")) - keyboard_check(ord("A")));

vspeed = min(vspeed + grav, gravmax);
hspeed = input_axis * walkspeed;
if (keyboard_check_pressed(vk_space) && place_meeting(x, y + 1, obj_solid)) {
	vspeed = jumpheight;
}

if (place_meeting(x + hspeed, y, obj_solid)) {
	var pixel_check = sign(hspeed);
	while (!place_meeting(x + pixel_check, y, obj_solid)) {
		x += pixel_check;
	}
	hspeed = 0;
}

if (place_meeting(x + hspeed, y + vspeed, obj_solid)) {
	var pixel_check = sign(vspeed);
	while(!place_meeting(x + hspeed, y + pixel_check, obj_solid)) {
		y += pixel_check;
	}
	vspeed = 0;
}