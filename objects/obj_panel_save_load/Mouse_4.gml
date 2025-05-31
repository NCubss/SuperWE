if (image_speed == 0 && image_index == 4 && mouse_x > (camera_x + 336) && mouse_x < (camera_x + 347) && mouse_y > (camera_y + 40) && mouse_y < (camera_y + 50))
{
    audio_play_sound(snd_close_guardabot, 0, false)
    event_user(0)
}

