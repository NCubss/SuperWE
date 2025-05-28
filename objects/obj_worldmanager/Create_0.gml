depth = -500;

// Music to play
music = get_world_music(style, theme);

pause = false;
// World number
world_number = 1;
// Level name
level_name = "";
// HUD alpha
hud_alpha = 0;
// HUD X offset
hud_offsetx = 0;

if (edit) {
	alarm[0] = first_play ? 60 : 1;
}
edit_prev = edit;	