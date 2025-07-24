mouse_in = false;
destroying = false;
image_speed = 0;
switch (type) {
	case WorldbotButton.SAVE_AS:
		sprite_index = spr_button_save_changes;
		enabled = true;
		image_index = enabled;
		// # for compatibility
		text =  string_hash_to_newline(lang().editor.tabs.coursebot.save_as);
		color = #c73d47;
		break;
	case WorldbotButton.SAVE:
		sprite_index = spr_button_save_changes;
		enabled = !is_undefined(global.world_path);
		image_index = enabled;
		text = string_hash_to_newline(lang().editor.tabs.coursebot.save);
		color = #c73d47;
		break;
	case WorldbotButton.LOAD:
		sprite_index = spr_button_load;
		enabled = true;
		text =  string_hash_to_newline(lang().editor.tabs.coursebot.load);
		color = #3e98ba;
		break;
}
if (!enabled) {
	color = #919191;
}