image_speed = 0
image_index = 0
size_x = 10
size_y = 12
index = 0
texto = lang().account.login
c_color = make_color_rgb(16,175,244);
var sx = obj_coordinator.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
instance_activate_object(obj_coordinator)
instance_activate_object(obj_cursor)
instance_create((x + 14), (y + 94), obj_iname)
instance_create((x + 122), (y + 94), obj_lp)
instance_create((x + 138), (y + 6), obj_iname_close)