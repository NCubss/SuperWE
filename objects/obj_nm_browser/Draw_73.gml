draw_surface(page_surf, page_surfx, page_surfy);
draw_sprite(spr_nm_line, real(official), x, y);
surface_set_target(page_surf);
draw_clear_alpha(c_black, 0.2);
surface_reset_target();