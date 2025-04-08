/// @description	Scale out (destroy)
if (destroying) exit;
destroying = true;
with (obj_world_window_button) instance_destroy();

animator(ac_window, 0, id, "image_xscale", 1, 0.5, 8);
animator(ac_window, 0, id, "image_yscale", 1, 0.5, 8);
alarm[0] = 7;