/// @description	Exit menu
audio_play_sound(snd_cerrar_menu, 0, false);
var anim = animator(ac_menu, 1, id, "xoffset", 0, 183, 20);
animator(ac_menu, 3, id, "dark", 64, 0, 20);
//// destroy once animator finishes
//instance_activate_object(obj_menu_editor);
//instance_activate_object(obj_menu_editor_ext);
anim.callback = function() {
	instance_destroy();
}
with (obj_nmenu_close) {
	can_press = false;
}
done = false;