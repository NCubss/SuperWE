/// @description	Toggle Copy mode
if (!obj_levelmanager.editor || !zoom || !obj_erase.active || obj_editormanager.expand_open) exit;
if (global.copy_mode) {
	global.copy_mode = false;
	with (obj_cursor) {
        item_add = 1;
		if (cont_panel_right == 3) {
			cont_panel_right = 2;
		}
		if (cont_panel_left == 3) {
			cont_panel_left = 2;
		}
		if (cont_panel_top == 3) {
			cont_panel_top = 2;
		}
	}
} else {
	global.copy_mode = true;
	with (obj_cursor) {
        item_add = 0;
		if (cont_panel_right == 0) {
			cont_panel_right = 1;
		}
		if (cont_panel_left == 0) {
			cont_panel_left = 1;
		}
		if (cont_panel_top == 0) {
			cont_panel_top = 1;
		}
	}
	with (obj_card_item) {
		active = 0;
	}
	global.select_resource = obj_resource_empty;
}