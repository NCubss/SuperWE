/// @description	Exit dialog

// Animate ourselves out depending on slide_to
switch (slide_to) {
	case Direction.UP:
		anim = animator(ac_dialog, 1, id, "yoffset", 0, -camera_height, 30);
		break;
	case Direction.RIGHT:
		anim = animator(ac_dialog, 1, id, "xoffset", 0, camera_width, 30);
		break;
	case Direction.DOWN:
		anim = animator(ac_dialog, 1, id, "yoffset", 0, camera_height, 30);
		break;
	case Direction.LEFT:
		anim = animator(ac_dialog, 1, id, "xoffset", 0, -camera_width, 30);
		break;
}

// Disable interactions
can_interact = false;

// Animate the overlay color value
animator(ac_dialog, 3, id, "dark", dark, 0, 30);

// Destroy dialog once animation ends
anim.callback = function() {
	instance_destroy();
}