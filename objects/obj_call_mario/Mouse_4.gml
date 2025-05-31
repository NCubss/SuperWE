if (instance_exists(obj_mario_editor) && (press == 1))
{
    audio_stop_sound(snd_trayectoria)
    audio_play_sound(snd_trayectoria, 0, false)
    cal_x = (obj_creation_preview.x - camera_x)
    cal_y = ((obj_creation_preview.y - 16) - camera_y)
    with (instance_create((camera_x  + cal_x), (camera_y  + cal_y), obj_silbido))
    {
        follow_x = other.cal_x
        follow_y = other.cal_y
    }
    with (obj_mario_editor)
    {
        follow = 1
        follow_x = other.cal_x
        follow_y = other.cal_y
    }
    instance_destroy()
}
