if (ready == 1 && sprite_exists(back))
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_x, camera_y, sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}

