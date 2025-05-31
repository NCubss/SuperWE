if (instance_exists(obj_editormanager) && obj_levelmanager.editor == 0)
{
    with (obj_creator_jugar_editar)
        event_user(2)
}
else if (global.level_g == 1)
{
    init_globals()
    room_goto(rm_guardabot)
}
else if (room == rm_title)
    scr_restart()
else if ((!instance_exists(obj_editormanager)) && obj_levelmanager.editor == 0)
    instance_create(camera_x, camera_y, obj_superado_bg)

