if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1 && obj_editormanager.expand_open == 0 && (!instance_exists(obj_apariencia)) && (!instance_exists(obj_bg_selection)) && (!instance_exists(obj_ventana_mario)) && (!instance_exists(obj_ventana)) && global.cursor == 0 && can_press == 1 && obj_creator_jugar_editar.image_speed == 0)
	|| global.in_world_editor
{
    audio_play_sound(snd_abrir_menu, 0, false)
    instance_create(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), obj_edit_menu)
	if (instance_exists(obj_levelmanager)) { // for now
		obj_erase.active = 0
	    obj_cursor.image_index = 0
	    obj_editormanager.expand_open = 2
	    obj_expand.active = 1
		obj_card_item.active = 0
		global.select_resource = obj_resource_empty
	}
	with (obj_world_editor) {
		can_interact = false;
	}
}