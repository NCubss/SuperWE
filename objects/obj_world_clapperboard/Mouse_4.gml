if (obj_world_editor.pause || !obj_world_editor.can_interact || !ready) exit;
ready = false;
animator(ac_world_clapperboard, 0, id, "clapper_angle", 0, 25, 45);
animator(ac_world_clapperboard, 1, id, "image_angle", 0, 25, 45);
alarm[0] = 23;
alarm[1] = 45;