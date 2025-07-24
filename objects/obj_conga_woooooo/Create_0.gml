image_alpha = 0.5;
image_speed = 246 / 60;
image_xscale = 2;
image_yscale = 2;
hspeed = choose(-1, 1);
hspeed *= random_range(1, 4);
if (hspeed < 0) {
	x = camera_right + sprite_width - 2;
} else {
	x = camera_left - sprite_width + 2;
}
y = random_range(camera_top - sprite_height + 2, camera_bottom + sprite_height - 2);
alarm[0] = 600;