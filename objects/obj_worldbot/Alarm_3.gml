if (fire_scale == 0.7) {
	animator(ac_worldbot_jet_fire, 0, id, "fire_scale", 0.7, 1, 3);
} else if (fire_scale == 1) {
	animator(ac_worldbot_jet_fire, 0, id, "fire_scale", 1, 0.7, 3);
}
alarm[3] = 3;