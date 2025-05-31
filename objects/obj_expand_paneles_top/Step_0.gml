if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
{
    sprite_index = spr_expand_panels_top_big
    x = (camera_x + 362)
}
else
{
    sprite_index = spr_expand_panels_top
    x = (camera_x + 181)
}
y = ((camera_y + 34) - obj_cursor.anim_top)

