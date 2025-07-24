draw_self();
if (anim_done && !destroying) {
	draw_set_halign(fa_center);
	draw_text(x + 81, y + 37, lang().editor.tabs.coursebot.title);
	draw_set_halign(fa_left);
}