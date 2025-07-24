// decide randomly
if (random(true)) {
	// spawn on left
	x = random_range(camera_left - sprite_width + 0.6, camera_left + (camera_width / 3) - sprite_width);
} else {
	// spawn on right
	x = random_range(camera_right + sprite_width - 0.6, camera_right - (camera_width / 3) + sprite_width);
}
vspeed = 0.6;
hspeed = random_range(-0.2, 0.2);
// basically hspeed speed, lol
hstep = 0.001;
alarm[0] = random_range(0, 180);