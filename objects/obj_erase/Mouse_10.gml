if (
	(instance_exists(obj_editormanager) && obj_editormanager.expand_open == 0)
	|| global.in_world_editor
) {
    if (effect_hover == 0)
    {
        audio_stop_sound(snd_panel_right_move)
        audio_play_sound(snd_panel_right_move, 0, false)
    }
    effect_hover = 1
}
