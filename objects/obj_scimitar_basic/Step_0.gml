if (distance_to_point(mouse_x, mouse_y) < 2) {

	var action;
	action[0] = 10; //the alarm to call on the player for pick up action
	action[1] = 0; //the alarm to call on this object for pick up action
	
	ui_add_opt(id, info[0], "pick up ", action);
}