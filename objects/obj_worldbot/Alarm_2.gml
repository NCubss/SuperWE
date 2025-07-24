if (instance_number(obj_worldbot_cloud) < 10) {
	instance_create_layer(0, -9.3, "clouds", obj_worldbot_cloud);
	alarm[2] = random_range(30, 60);
} else {
	alarm[2] = 1;
}