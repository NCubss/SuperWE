switch global.style
{
    case 0:
        sprite_index = spr_SMB_drybones_crubles
        image_speed = 0
        break
    case 1:
        sprite_index = spr_SMB3_drybones_crumble
        image_speed = 0
        break
    case 2:
        image_speed = 0
        break
    case 3:
        sprite_index = spr_NSMBU_drybones_desarmar
        image_speed = 0.5
        break
}

s_dry = spr_drybones_deads
hardness = 100
stomp = -1
edible = 2
big = 0
dead_h = 0
apilar = 0
direct = 1
shake = 0
if (global.style == 3)
{
    audio_stop_sound(snd_NSMBU_drybones_desarmar)
    audio_play_sound(snd_NSMBU_drybones_desarmar, 0, false)
    alarm[1] = 240
}
else
{
    audio_stop_sound(snd_crumble)
    audio_play_sound(snd_crumble, 0, false)
    alarm[0] = 8
}

