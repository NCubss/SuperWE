if ((!audio_is_playing(bgm_sm1clear)) && (!audio_is_playing(snd_SMB_clear_superball)))
{
    if (instance_exists(obj_editormanager) && obj_levelmanager.editor == 0)
    {
        with (obj_creator_jugar_editar)
            event_user(2)
    }
    else if ((!instance_exists(obj_editormanager)) && obj_levelmanager.editor == 0)
        instance_create(camera_x, camera_y, obj_superado_bg)
}
else
    alarm[2] = 1

