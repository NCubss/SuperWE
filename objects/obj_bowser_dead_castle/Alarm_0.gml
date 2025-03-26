switch global.style
{
    case 0:
        sprite_index = spr_SMB_bowser_fire
        break
    case 1:
        sprite_index = spr_SMB3_bowser_dead
        break
    case 2:
        sprite_index = spr_SMW_bowser_walk
        break
    case 3:
        sprite_index = spr_NSMBU_bowser_dead
        break
}

if (global.style == 3)
{
    image_speed = 1
    audio_stop_sound(snd_NSMBU_bowser_castle1)
    audio_play_sound(snd_NSMBU_bowser_castle1, 0, false)
}
else
    image_speed = 0.15

