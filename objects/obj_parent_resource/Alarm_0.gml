if (drag == 1)
{
    if ((object_index == obj_egg_res || object_index == obj_egg_red_res) && global.style < 2)
    {
        image_speed = 0
        image_index = 0
    }
    if ((place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource) && (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, id))) && unlocked == 0) || place_meeting(x, y, obj_arrow_lock))
        drop_lock = 1
    else
        drop_lock = 0
    depth = -19
    x_draw = (mouse_x + xx)
    y_draw = (mouse_y + yy)
    x = (mouse_x + xx)
    y = (mouse_y + yy)
    move_snap(16, 16)
    if (play_sound == 0 && (x != x_start || y != y_start))
    {
        audio_play_sound(snd_drag, 0, false)
        play_sound = 1
    }
    if (obj_coordinator.modo_android == 1 && obj_cursor.move_view == 0)
    {
        obj_cursor.move_view = 1
        obj_editormanager.expand_open = 2
    }
    if (x != prev_x || y != prev_y)
    {
        audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_x = x
        prev_y = y
        if instance_exists(obj_ventana)
        {
            with (obj_ventana)
                can_anim2 = 1
        }
    }
    if (ventana > 0 && x == x_start && y == y_start)
    {
        ventana += 0.5
        if (ventana >= 14)
        {
            event_user(0)
            ventana = 0
        }
    }
    else
        ventana = 0
    global.editor_lock = 1
    alarm[0] = 1
}
else
{
    if ((object_index == obj_egg_res || object_index == obj_egg_red_res) && global.style < 2)
        image_speed = 0.25
    else
        image_speed = 0
    if (drop_lock == 1)
    {
        audio_play_sound(snd_ground_bomb, 0, false)
        x = x_start
        y = y_start
    }
    else if (x != x_start || y != y_start)
        audio_play_sound(snd_mario_add, 0, false)
    move_snap(16, 16)
    drop_lock = 0
    ventana = 0
    if (obj_coordinator.modo_android == 1)
    {
        obj_cursor.move_view = 0
        obj_editormanager.speed = 0
        if (obj_levelmanager.editor_sonidos == 0)
            obj_editormanager.expand_open = 0
    }
    depth = laller
    play_sound = 0
    x_draw = x
    y_draw = y
    if (object_index != obj_tuberia_res)
        expand3 = 1
    x_start = x
    y_start = y
    global.editor_lock = 0
    global.resource_block = 0
    if (x >= room_width || x < 0 || y >= room_height || y < 0)
        instance_destroy()
    if (object_index == obj_tuberia_res && warp > 0)
        event_user(5)
}




