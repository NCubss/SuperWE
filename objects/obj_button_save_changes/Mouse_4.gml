if (image_index == 1 && global.save_changes != 0 && press == 1 && instance_exists(obj_panel_save_load))
{
    audio_play_sound(snd_select_guardabot, 0, false)
    if instance_exists(obj_robot)
    {
        with (obj_robot)
            canpress = 1
    }
    file_delete(global.save_changes)
    instance_create((camera_x + 338), (camera_y + 198), obj_load_image)
    global.instance_deactivate = 0
    press = 0
    alarm[0] = 12
}

