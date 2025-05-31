if instance_exists(obj_water_move)
{
    if (y != obj_water_move.y)
        draw_sprite(spr_water_limit_draw, 0, (camera_x + 222), y)
}
draw_sprite(sprite_index, image_index, (camera_x + 222), y)

