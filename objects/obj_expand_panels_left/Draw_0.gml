var zoom;
if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
    zoom = 200
else
    zoom = 100
draw_sprite_ext(sprite_index, image_index, ((camera_x + 54) - obj_cursor.anim_left), (camera_y + zoom), 1, 1, 0, c_white, 1)

