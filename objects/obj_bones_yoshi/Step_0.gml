if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && (global.theme == "forest" || global.theme == "beach")))
    image_angle -= (6 * sign(hspeed))
else
    image_angle -= (12 * sign(hspeed))
if (x < (camera_get_view_x(view_get_camera(0)) - 32) || x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) + 32) || y > ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) + 32))
    instance_destroy()

