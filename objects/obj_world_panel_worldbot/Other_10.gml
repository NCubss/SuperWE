/// @description	Destroy
image_index--;
image_speed = -0.4;
destroying = true;
with (obj_world_robot) {
	active = false;
}
instance_destroy(obj_world_btn_save_load);