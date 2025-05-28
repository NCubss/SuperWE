switch (state) {
	case WMState.IDLE:
		sprite_index = spr_mario_small_goal;
		image_index = 0;
		break;
	case WMState.MOVING:
		sprite_index = spr_mario_small_walk;
		break;
}