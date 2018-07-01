if (distance_to_point(mouse_x, mouse_y) < 2) {

	var action;
	action[0] = 11; //the alarm to call on the player for smelting action
	action[1] = 0; //the alarm to call on this object for smelting action
	
	ui_add_opt(id, "furnace", "use ", action);
	//ui_add_opt(id, "furnace", "smelt ore at", -1);
	/*
	action[0] = id;
	action[1] = 0;
	action[2] = "use furnace";
	
	ui_pos = ds_list_add(control_ui.hoveropts, action);
	*/
}






/*
if (distance_to_point(mouse_x, mouse_y) >= 2) && (notified_ui == true) {
	notified_ui = false;
	ds_list_delete(control_ui.hoveropts, ui_pos);
}




// light testing code

/*
//radius of light source
light_radius = 164;

if (distance_to_point(mouse_x, mouse_y) < light_radius) {
	
	//wall boundary points
	x1 = x-bwx/2;
	y1 = y-bwy/2;
	x2 = x-bwx/2;
	y2 = y+bwy/2;
	x3 = x+bwx/2;
	y3 = y+bwy/2;
	x4 = x+bwx/2;
	y4 = y-bwy/2;
	
	dirc = point_direction(mouse_x, mouse_y, x1, y1); //direction from mouse to edge of the wall
	
	//shadow vertices
	x11 = x1 + lengthdir_x(200, dirc); //length of shadow is set to 500 here
	y11 = y1 + lengthdir_y(200, dirc);
	
	x21 = x2 + lengthdir_x(200, dirc);
	y21 = y2 + lengthdir_y(200, dirc);
	
	x31 = x3 + lengthdir_x(200, dirc);
	y31 = y3 + lengthdir_y(200, dirc);
	
	x41 = x4 + lengthdir_x(200, dirc);
	y41 = y4 + lengthdir_y(200, dirc);
	
}

		//gpu_set_blendmode(bm_add);
	surface_set_target(global.light_surface);
	//draw shadow
	draw_set_alpha(1);
	//gpu_set_blendmode(bm_subtract);
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex(x1,y1);
	draw_vertex(x11,y11);
	draw_vertex(x2,y2);
	draw_vertex(x21,y21);
	draw_vertex(x3,y3);
	draw_vertex(x31,y31);
	draw_vertex(x4,y4);
	draw_vertex(x41,y41);
	draw_vertex(x1,y1);
	draw_vertex(x11,y11);
	draw_primitive_end();
	surface_reset_target();
	//gpu_set_blendmode(bm_normal);
	*/