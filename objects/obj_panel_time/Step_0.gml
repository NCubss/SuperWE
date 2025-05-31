x = ((camera_x + 6) - obj_cursor.anim_left)
y = (camera_y + 109)
if (active == 1)
    image_index = 1
else
    image_index = 0
if instance_exists(obj_panel_left)
    visible = obj_panel_left.visible

