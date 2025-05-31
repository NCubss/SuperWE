event_user(0)
if (!surface_exists(surf))
    surf = surface_create(camera_width, camera_height)
else
{
    surface_set_target(surf)
    draw_clear((c_white - surf_colour))
    gpu_set_blendmode(bm_subtract)
    draw_circle_colour((x - camera_x), (y - camera_y), scale, 16777215, 16777215, 0)
    gpu_set_blendmode(bm_normal)
    surface_reset_target()
}
