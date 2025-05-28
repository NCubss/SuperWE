/// @description	Startup
if (first_play) {
	animator(ac_world_hud, 0, id, "hud_alpha", 0, 1, 30);
	animator(ac_world_hud, 0, id, "hud_offsetx", -15, 0, 30);
}
audio_play_sound(music, 1, true);