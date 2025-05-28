if (obj_worldmanager.edit) {
	text = lang().editor.clapperboard.play;
} else {
	text = lang().editor.clapperboard.edit;
}
// Angle of the top part
clapper_angle = 0;
// Surface that the text will be applied on
board_surf = surface_create(sprite_width, sprite_height);
//surface_set_target(board_surf);
//draw_clear_alpha(c_black, 0);
//surface_reset_target();
// Hover animation index
anim = 0;
// Is user hovering?
hover = false;
// Can the user click on the clapperboard?
ready = true;

origx = x;
origy = y;