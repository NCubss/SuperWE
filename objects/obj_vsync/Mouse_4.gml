audio_stop_sound(snd_aceptar)
audio_play_sound(snd_aceptar, 0, false)
if instance_exists(obj_coordinator)
{
    if (global.vsync == 0)
        global.vsync = 1
    else
        global.vsync = 0
	with obj_coordinator
		alarm[11] = 1
    image_index = global.vsync
}

