if (object_index == obj_play_screen)
{
    draw_sprite_ext(spr_creator_top, 0, (camera_x + 197), (camera_y + 130), image_xscale, image_yscale, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.language, (camera_x + 197), (camera_y + 130), image_xscale, image_yscale, rot1, c_white, 1)
	if (effect_hover == 1){
		anim += 0.3
		scr_anim_hover((camera_x + 197), (camera_y + 130), anim, 2)
	}
}
else
{
    draw_sprite_ext(spr_creator_top, 0, (camera_x + 135), (camera_y + 130), image_xscale, image_yscale, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.language, (camera_x + 135), (camera_y + 130), image_xscale, image_yscale, rot1, c_white, 1)
	if (effect_hover == 1){
		anim += 0.3
		scr_anim_hover((camera_x + 135), (camera_y + 130), anim, 2)
	}
}

