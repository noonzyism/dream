if (distance_to_point(mouse_x, mouse_y) < 2) {

	var action;
	action[0] = 9; //the alarm to call on the player for mining action
	action[1] = 0; //the alarm to call on this object for mining action
	
	ui_add_opt(id, "ore", "mine ", action);
}