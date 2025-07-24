if (!surface_exists(surf)) {
	surf = surface_create(surf_width, surf_height);
}
// Main UI
draw_sprite(bg_worldbot_ui, 0, camera_x, camera_y);
// Head
draw_sprite(spr_worldbot_head, subimg, camera_center_x, camera_y + (yoffset / 2));
// Left Jet
draw_sprite(spr_worldbot_jet, 0, camera_left + 35, camera_y + 164 + (!yoffset / 2));
draw_sprite_ext(spr_worldbot_jet_fire, 0, camera_left + 35, camera_y + 164 + (!yoffset / 2), 1, fire_scale, 0, c_white, 1);
// Right Jet
draw_sprite(spr_worldbot_jet, 0, camera_right - 36, camera_y + 164 + (!yoffset / 2));
draw_sprite_ext(spr_worldbot_jet_fire, 0, camera_right - 36, camera_y + 164 + (!yoffset / 2), 1, fire_scale, 0, c_white, 1);
// Head Text
draw_set_color(#c4ff47);
draw_set_halign(fa_center);
draw_text(camera_center_x, camera_y + (global.language == Language.CHINESE ? 11 : 10), lang().pages.worldbot);
// Header
draw_set_color(c_white);
draw_text(camera_center_x, camera_y + (global.language == Language.CHINESE ? 33 : 32), lang().worldbot.worlds_title);

draw_set_halign(fa_left);
