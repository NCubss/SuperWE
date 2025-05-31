if sprite_exists(back)
{
    gpu_set_blendenable(0)
    draw_sprite(back, 0, camera_x, camera_y)
    gpu_set_blendenable(1)
}

