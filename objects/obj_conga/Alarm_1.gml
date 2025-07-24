/// @description Start dancin'
alarm[0] = 1;
alarm[2] = random_range(10, 60);
audio_play_sound(snd_conga, 0, true);
image_speed = 246 / 60;
animator(ac_window, 0, id, "dark_alpha", 1, 0, 30);
