x = 64
y = 48
ready = 2
alarm[4] = 200
motion_set(270, 3)
if (global.style == 3)
{
    if (global.night == 0)
        audio_play_sound(snd_NSMBU_angrysun, 0, false)
    else
        audio_play_sound(snd_NSMBU_happymoon, 0, false)
}

