if (ready == 0)
{
    ready = 1
	// go to next room in order
	// this is useful for debugging new rooms instead of hardcoding it and going
	// to rm_intro_new
    room = room_next(room);
}
else
{
    with (obj_intro_controller)
        instance_destroy()
    audio_play_sound(snd_add_paracaidas, 0, false)
	
	/*
    with (instance_create(4, 11, obj_btn_idioma))
        value = 0
    with (instance_create(35, 11, obj_btn_idioma))
        value = 1
    with (instance_create(66, 11, obj_btn_idioma))
        value = 2
	/**/
    instance_create(0, 0, obj_login_control)
    instance_create(149, 138, obj_btn_invitado)
    instance_create(123, 138, obj_btn_iniciar)
    instance_create(286, 185, obj_btn_social)
    with (instance_create(308, 185, obj_btn_social))
    {
        image_index = 1
        link = url_dc
    }
    with (instance_create(330, 185, obj_btn_social))
    {
        image_index = 2
        link = url_yt
    }
    with (instance_create(352, 185, obj_btn_social))
    {
        image_index = 3
        link = url_tw
    }
    instance_create(0, 0, obj_cursor)
    instance_create((camera_x + 16), (camera_y + 189), obj_version)
	}

