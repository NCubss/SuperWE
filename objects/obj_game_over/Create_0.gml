audio_play_sound(snd_gameover, 0, false)
if (obj_coordinator.modo_android == 1 && global.controles_tactiles == 1)
{
    with (obj_coordinator)
    {
        event_user(4)
        event_user(5)
    }
}
image_speed = 0.4
alarm[0] = 360

