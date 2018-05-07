//this recreates the surface if it was garbage collected (for example on minimize)
if !surface_exists(global.light_surface) {
	global.light_surface = surface_create(2024, 2024);
}

//if it's early morning or late evening - draw darkness
surface_set_target(global.light_surface);
	
if (time.hour >= 20) || (time.hour <= 6) { //night time
	draw_set_color(c_ltgray);
	draw_rectangle(0, 0, 2024, 2024, false);
}
else if (time.hour >= 18) || (time.hour <= 8) { //sun almost set
	draw_set_color(c_gray);
	draw_rectangle(0, 0, 2024, 2024, false);
}
else if (time.hour >= 17) || (time.hour <= 9) { //sun is setting
	draw_set_color(c_dkgray);
	draw_rectangle(0, 0, 2024, 2024, false);
}
else {
	draw_set_color(c_black);
	draw_rectangle(0, 0, 2024, 2024, false);
}
surface_reset_target();