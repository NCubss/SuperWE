audio_play_sound(snd_select_guardabot, 0, false)
if (sprite_index == spr_button_save)
{
    if instance_exists(obj_panel_save_load)
    {
        with (obj_panel_save_load)
            event_user(0)
        obj_robot.active = 0
    }
    obj_editormanager.expand_open = 2
    instance_create(camera_x, camera_y, obj_window_alert)
}
else if (sprite_index == spr_button_load)
{
    if instance_exists(obj_panel_save_load)
    {
        with (obj_panel_save_load)
            event_user(0)
        obj_robot.active = 0
    }
    obj_editormanager.expand_open = 2
    instance_create((camera_x + 84), (camera_y + 55), obj_alert_load)
}

