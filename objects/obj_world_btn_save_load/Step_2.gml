with (obj_world_panel_worldbot) {
	other.x = x + 15;
	switch (other.type) {
		case WorldbotButton.SAVE_AS:
			other.y = y + 62;
			break;
		case WorldbotButton.SAVE:
			other.y = y + 105;
			break;
		case WorldbotButton.LOAD:
			other.y = y + 171;
			break;
	}
}