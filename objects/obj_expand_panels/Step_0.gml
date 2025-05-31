x = (((camera_x + camera_width) - 38) + obj_cursor.anim_right)
if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
{
    sprite_index = spr_expand_panels_big
    y = (camera_y + 200)
}
else
{
    sprite_index = spr_expand_panels
    y = (camera_y + 100)
}

