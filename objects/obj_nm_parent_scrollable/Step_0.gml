with (obj_nm_browser) {
	other.y = other.yorigin - scroll;
	if (
		other.mouse_in
		&& (!position_meeting(mouse_x, mouse_y, other.id)
		|| !point_in_rectangle(mouse_x, mouse_y, page_surfx, page_surfy, page_surfx + page_surfw, page_surfy + page_surfh)
	)) {
		other.mouse_in = false;
		with (other) event_user(0);
	} else if (
		!other.mouse_in
		&& (position_meeting(mouse_x, mouse_y, other.id)
		&& point_in_rectangle(mouse_x, mouse_y, page_surfx, page_surfy, page_surfx + page_surfw, page_surfy + page_surfh)
	)) {
		other.mouse_in = true;
		with (other) event_user(1);
	}
}