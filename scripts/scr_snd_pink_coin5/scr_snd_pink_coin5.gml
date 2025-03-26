function scr_snd_pink_coin5()
{
if global.style == 2
	audio_play_sound(snd_pink_coin5, 0, false)
else if global.style == 3
	audio_play_sound(snd_NSMBU_pink_coin5, 0, false)
else
	audio_play_sound(snd_SMB_pink_coin5, 0, false)
}

