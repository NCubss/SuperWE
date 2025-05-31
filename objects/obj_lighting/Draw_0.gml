if (!surface_exists(surf))
    surf = surface_create(camera_width, camera_height)
else if (view_current == 0)
    draw_surface(surf, camera_x, camera_y)

