switch global.style
{
    case 0:
        sprite_index = spr_SMB_fireball
        break
    case 1:
        sprite_index = spr_SMB3_fireball
        break
    case 3:
        sprite_index = spr_NSMBU_fireball
        break
}

swimming = 0
audio_stop_sound(scr_snd_fireball())
audio_play_sound(scr_snd_fireball(), 0, false)
if (global.style == 3)
{
    image_speed = 0.3
    alarm[0] = 5
}
else
    image_speed = 0.15
direct = 1
if place_meeting(x, y, obj_solid)
    event_user(0)

