/// @description	Switch to Miscellaneous page
can_interact = false;
animator(ac_settings, 0, id, "ui_alpha", 1, 0, trans_time / 2).callback = function() {
	page = NSPage.MISCELLANEOUS;
	ns_generate_page(page, true);
	animator(ac_settings, 0, id, "ui_alpha", 0, 1, trans_time / 2).callback = function() {
		can_interact = true;
	};
}