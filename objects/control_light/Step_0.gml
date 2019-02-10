//this recreates the surface if it was garbage collected (for example on minimize)
if !surface_exists(global.light_surface) {
	bounding_length = global.view_diameter;
	global.light_surface = surface_create(bounding_length, bounding_length);
}

//if it's early morning or late evening - draw darkness
surface_set_target(global.light_surface);
	
if (master_time.hour >= 20) || (master_time.hour <= 6) { //night master_time
	global.ambient_color = c_dkgray;
	draw_set_color(c_ltgray);
	draw_rectangle(0, 0, 2024, 2024, false);
}
else if (master_time.hour >= 18) || (master_time.hour <= 8) { //sun almost set
	global.ambient_color = c_gray;
	draw_set_color(c_gray);
	draw_rectangle(0, 0, 2024, 2024, false);
}
else if (master_time.hour >= 17) || (master_time.hour <= 9) { //sun is setting
	global.ambient_color = c_ltgray;
	draw_set_color(c_dkgray);
	draw_rectangle(0, 0, 2024, 2024, false);
}
else {
	global.ambient_color = c_white;
	draw_set_color(c_black);
	draw_rectangle(0, 0, 2024, 2024, false);
}
surface_reset_target();