if ((obj_levelmanager.editor == 1) && (((global.theme == "forest") || ((global.theme == "beach") || ((global.theme == "castle") || ((global.theme == "mountain") && (global.night == 1))))) && ((obj_editormanager.expand_open == 0) && ((obj_levelmanager.editor_sonidos == 0) && ((obj_editormanager.zoom == 0) && ((!instance_exists(obj_ventana)) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_bg_selection)) && (obj_creator_jugar_editar.image_speed == 0)))))))))
{
    audio_play_sound(snd_panel_open, 0, false)
    obj_editormanager.expand_open = 2
    obj_levelmanager.editor_water = 1
    instance_create(camera_x, camera_y, obj_water_level_control)
    with (obj_cursor)
    {
        item_add = 0
        if (cont_panel_right == 0)
            cont_panel_right = 1
        if (cont_panel_left == 0)
            cont_panel_left = 1
        if (cont_panel_top == 0)
            cont_panel_top = 1
        cont_panel_creator = 1
    }
}

