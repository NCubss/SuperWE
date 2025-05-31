if instance_exists(obj_editormanager)
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
else
    instance_create(camera_x, camera_y, obj_superado_bg)

