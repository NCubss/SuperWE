/// @description Background change
with (obj_intro_bg) {
	var color;
	do {
		color = choose(
			#ff3030,
			#ffa030,
			#30c030,
			#30a0ff,
			#3030ff,
			#a030ff,
			#141414
		);
	} until (c1 != color);
	c1 = color;
	c2 = color;
	c3 = color;
	c4 = color;
	image_blend = color - #141414;
}
alarm[0] = 123 / 2;