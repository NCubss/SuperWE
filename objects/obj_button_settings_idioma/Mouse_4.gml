audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if (global.language = 0)
	global.language = 1
else if (global.language = 1)
	global.language = 2
else if (global.language = 2)
	global.language = 3
else if (global.language = 3)
	global.language = 4
else 
	global.language = 0


