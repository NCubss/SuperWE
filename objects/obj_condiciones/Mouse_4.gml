if (image_speed == 0 && image_index == 3 && mouse_x > (camera_x + 326) && mouse_x < (camera_x + 337) && mouse_y > (camera_y + 40) && mouse_y < (camera_y + 50))
{
    audio_play_sound(snd_panel_close, 0, false)
    event_user(0)
}

