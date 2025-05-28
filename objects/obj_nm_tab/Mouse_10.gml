audio_stop_sound(snd_pass_carditems);
audio_play_sound_ext({
	sound: snd_pass_carditems,
	gain: 0.5
});
if (!pressed) animator(ac_nm_tab, 0, id, "yoffset", yoffset, 2, 10);