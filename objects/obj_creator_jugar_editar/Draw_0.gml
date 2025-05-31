if instance_exists(obj_cursor)
{
    draw_sprite_ext(spr_creator_part, 0, ((camera_x + 4) - obj_cursor.anim_creator), (camera_y + 186), 1, 1, rot1, c_white, image_alpha)
    draw_sprite_ext(sprite_index, image_index, ((camera_x + 4) - obj_cursor.anim_creator), (camera_y + 186), 1, 1, rot2, c_white, image_alpha)
}
if (effect_hover == 1){
	anim2 += 0.3
	scr_anim_hover2(((camera_x + 4) - obj_cursor.anim_creator), (camera_y + 186), anim2, 2)
}