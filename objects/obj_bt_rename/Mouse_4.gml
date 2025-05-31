if disabled = 0{
if (global.levelguardabot != "" && press == 1 && image_index == 0 && obj_guardabot.active == 1)
{
    audio_play_sound(snd_aceptar, 0, false)
    instance_create_depth((camera_x + 112), (camera_y + 12),-22, obj_rename_control)
}
}


