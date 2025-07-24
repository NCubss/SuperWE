event_inherited();
if (fire && mario_coll()) {
	with (obj_mario) event_user(0);
}
switch (global.style) {
	case GameStyle.SMB:
	case GameStyle.SMB3:
	case GameStyle.SMW:
		fire_index += 0.25;
		break;
	case GameStyle.NSMBU:
		fire_index += 0.5;
		break;
}