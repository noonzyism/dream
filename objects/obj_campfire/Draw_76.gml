gpu_set_blendmode(bm_subtract);
surface_set_target(global.light_surface);
draw_ellipse_color(x - radius - light_surface_x, y - radius - light_surface_y, x + radius - light_surface_x, y + radius - light_surface_y, c_orange, c_black, false);
surface_reset_target();
gpu_set_blendmode(bm_normal);
