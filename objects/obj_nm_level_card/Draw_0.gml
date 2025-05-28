nm_page_render_start();

draw_self();
draw_set_color(c_black);
// title
draw_text(x + 5, y, title);
// thumbnail (theme and style)
draw_sprite_ext(spr_cards_entorno, theme, x + 3, y + 14, 2, 2, 0, c_white, 1);
draw_sprite(spr_carteles_small, style, x + 8, y + 19);
// details
draw_set_color(#696a6a);
// author
draw_sprite_ext(spr_nm_card_icons, 0, x + 83, y + 18, 1, 1, 0, #696a6a, 1);
draw_text(x + 95, y + 15, author);
// likes
draw_set_color(liked ? #ac3232 : #696a6a);
draw_sprite_ext(spr_nm_card_icons, 1, x + 83, y + 30, 1, 1, 0, (liked ? #ac3232 : #696a6a), 1);
draw_text(x + 95, y + 27, string(likes))
// dislikes
draw_set_color(disliked ? #5b6ee1 : #696a6a);
draw_sprite_ext(spr_nm_card_icons, 2, x + 123, y + 30, 1, 1, 0, (disliked ? #5b6ee1 : #696a6a), 1);
draw_text(x + 135, y + 27, string(dislikes));
// attempts (steps icon)
draw_set_color(#696a6a);
draw_sprite_ext(spr_nm_card_icons, 3, x + 163, y + 30, 1, 1, 0, #696a6a, 1);
draw_text(x + 175, y + 27, string(attempts));
// tags
draw_sprite_ext(spr_nm_card_icons, 4, x + 83, y + 42, 1, 1, 0, #696a6a, 1);
draw_text(x + 95, y + 39, string("{0}{1}{2}", tag1, (tag1 != "" && tag2 != "" ? ", " : ""), tag2))
// featured icon
draw_set_color(c_white);
if (featured) {
	draw_sprite(spr_nm_card_icons, 5, x + 235, y + 5);
}
// cleared icon
if (cleared) {
	draw_sprite(spr_nm_card_icons, 6, x + (featured ? 221 : 235), y + 5);
}

nm_page_render_end();