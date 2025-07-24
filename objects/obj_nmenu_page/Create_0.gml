mouse_in = false;
origx = x;
origy = y;
switch (image_index) {
	case NMMPage.COURSE_MAKER:
		text = lang().pages.level_editor;
		break;
	case NMMPage.ENDLESS:
		text = lang().pages.endless;
		image_alpha = 0.5;
		break;
	case NMMPage.COURSE_WORLD:
		text = lang().pages.online;
		break;
	case NMMPage.COURSEBOT:
		text = lang().pages.coursebot;
		break;
	case NMMPage.WORLD_MAKER:
		text = lang().pages.world_editor;
		break;
	case NMMPage.WORLDBOT:
		text = lang().pages.worldbot;
		break;
}
switch (size) {
	case NMMPageButtonSize.FULL:
		image_xscale = 162 / sprite_width;
		break;
	case NMMPageButtonSize.MEDIUM:
		image_xscale = 126 / sprite_width;
		break;
	case NMMPageButtonSize.SMALL:
		image_xscale = 1;
		break;
}
// ignore my shitty beautifying
selected = (
	   (image_index == NMMPage.COURSE_MAKER && room == rm_editor      )
	|| (image_index == NMMPage.COURSE_WORLD && room == rm_course_world)
	|| (image_index == NMMPage.COURSEBOT    && room == rm_guardabot   )
	|| (image_index == NMMPage.WORLD_MAKER  && room == rm_world_editor)
	|| (image_index == NMMPage.WORLDBOT     && room == rm_worldbot    )
);
if (size == NMMPageButtonSize.SMALL) {
	text = "";
}