
surface_set_target(light_surface);
draw_set_color(c_ltgray);
draw_rectangle(0, 0, 2024, 2024, false);
surface_reset_target();

gpu_set_blendmode(bm_subtract);
surface_set_target(light_surface);
//draw_ellipse_color(mouse_x - radius, mouse_y - radius, mouse_x + radius, mouse_y + radius, c_white, c_black, false);
surface_reset_target();
gpu_set_blendmode(bm_normal);