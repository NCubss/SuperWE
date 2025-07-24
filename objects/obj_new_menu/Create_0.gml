audio_pause_all();
audio_resume_sound(snd_abrir_menu);
title = lang().pages.main_menu;
dark = 0;
depth = 0;
done = false;
//with (obj_menu_editor_ext) {
//	can_press = false;
//}
screen = sprite_create_from_surface(
	application_surface,
	0, 0,
	surface_get_width(application_surface),
	surface_get_height(application_surface),
	false, false,
	0, 0
);
// if we simply deactivate all active instances, and then activate all
// deactivated instances, we might risk accidentally activating a previously
// deactivated instance, so we write them down
active_instances = [];
with (all) {
	if (
		object_index != obj_cursor
		&& object_index != obj_coordinator
		&& object_index != obj_new_menu
		&& object_index != obj_cheat_mode
	) {
		array_push(other.active_instances, id);
		instance_deactivate_object(id);
	}
}
bg = instance_create_depth(0, 0, 0, obj_intro_bg, {
	image_blend: #000000,
	image_angle: 22.5,
	c1: #141414,
	c2: #141414,
	c3: #141414,
	c4: #141414,
	target_is_app_surf: false,
	target_width: 512,
	target_height: 432,
	target_is_hd: true
});
instance_create_depth(0, 0, -1, obj_nmenu_close);
#region Page Buttons
instance_create_depth(10.5, 32, -2, obj_nmenu_page, {
	image_index: NMMPage.COURSE_MAKER,
	size: NMMPageButtonSize.MEDIUM
});
instance_create_depth(141.5, 32, -3, obj_nmenu_page, {
	image_index: NMMPage.COURSEBOT,
	size: NMMPageButtonSize.SMALL
});
instance_create_depth(10.5, 66, -4, obj_nmenu_page, {
	image_index: NMMPage.WORLD_MAKER,
	size: NMMPageButtonSize.MEDIUM
});
instance_create_depth(141.5, 66, -5, obj_nmenu_page, {
	image_index: NMMPage.WORLDBOT,
	size: NMMPageButtonSize.SMALL
});
instance_create_depth(10.5, 100, -6, obj_nmenu_page, {
	image_index: NMMPage.ENDLESS,
	size: NMMPageButtonSize.FULL
});
instance_create_depth(10.5, 134, -7, obj_nmenu_page, {
	image_index: NMMPage.COURSE_WORLD,
	size: NMMPageButtonSize.FULL
});
instance_create_depth(10.5, 175.5, -8, obj_nmenu_yamamura);
instance_create_depth(153.5, 186.5, -9, obj_nmenu_settings, { image_index: 3 });
instance_create_depth(130.5, 186.5, -9, obj_nmenu_settings, { image_index: 1 });
instance_create_depth(107.5, 186.5, -9, obj_nmenu_settings, { image_index: 2 });
instance_create_depth(84.5, 186.5, -9, obj_nmenu_settings, { image_index: 4 });
instance_create_depth(61.5, 186.5, -9, obj_nmenu_settings, { image_index: 0 });
#endregion
xoffset = 183;
animator(ac_menu, 0, id, "xoffset", 183, 0, 60);
animator(ac_menu, 2, id, "dark", 0, 64, 20).callback = function() {
	done = true;
};