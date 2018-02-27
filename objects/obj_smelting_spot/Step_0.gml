if (distance_to_point(mouse_x, mouse_y) < 2) && (notified_ui == false) {
	notified_ui = true;
	
	action[0] = id;
	action[1] = 0;
	action[2] = "use furnace";
	
	ui_pos = ds_list_add(control_ui.hoveropts, action);
}


if (distance_to_point(mouse_x, mouse_y) >= 2) && (notified_ui == true) {
	notified_ui = false;
	ds_list_delete(control_ui.hoveropts, ui_pos);
}