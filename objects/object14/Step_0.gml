radius += bloom;


gpu_set_blendmode(bm_subtract);
surface_set_target(global.light_surface);
draw_ellipse_color(x - radius, y - radius, x + radius, y + radius, c_orange, c_black, false);
surface_reset_target();
gpu_set_blendmode(bm_normal);