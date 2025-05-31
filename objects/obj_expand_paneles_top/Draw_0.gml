var zoom;
if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
    zoom = 362
else
    zoom = 181
draw_sprite_ext(sprite_index, image_index, (camera_x + zoom), ((camera_y + 34) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)

