/// @description	Rotate path

audio_play_sound(snd_change_arrow, 0, false);
// play out rotation animation
switch (rotation) {
	case Direction.UP:
		animator(ac_path_rot, 0, id, "display_rotation", 0, -90, 12);
		break;
	case Direction.RIGHT:
		animator(ac_path_rot, 0, id, "display_rotation", -90, -180, 12);
		break;
	case Direction.DOWN:
		animator(ac_path_rot, 0, id, "display_rotation", -180, -270, 12);
		break;
	case Direction.LEFT:
		animator(ac_path_rot, 0, id, "display_rotation", -270, -360, 12);
		break;
}
rotation = clockwise(rotation);
