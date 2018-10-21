cam_x = global.cam_x;
cam_y = global.cam_y;

draw_set_alpha(1);

///////////////////////////////////////////////////////////////////////////////////////////////
//cursor draw
///////////////////////////////////////////////////////////////////////////////////////////////
if (mouse_check_button_pressed(mb_left)) {
	instance_activate_object(ui_cursor);
	if (ds_queue_size(global.opts) > 0) {
		ui_cursor.sprite_index = sprite10;
	}
	else {
		ui_cursor.sprite_index = sprite9;
	}
}

///////////////////////////////////////////////////////////////////////////////////////////////
//hover options
///////////////////////////////////////////////////////////////////////////////////////////////

if (mouse_check_button_pressed(mb_left) && ds_queue_empty(global.opts)) {
	target = -1;
	cancel_actions();
}

while (!ds_queue_empty(global.opts)) {
	var opt			= ds_queue_dequeue(global.opts);
	var obj			= opt[0];
	var name		= opt[1];
	var verb		= opt[2];
	
	draw_set_font(f_stikta12);
	draw_set_alpha(0.7);
	draw_set_color(c_white);
	draw_text_ext_transformed(mouse_x + 32, mouse_y, string(verb) + " " + string(name), 1, 200, 1, 1, -global.cam_angle);
	
	if (mouse_check_button_pressed(mb_left)) {
		//opt[3] holds the alarm callbacks for the player and interactive object
		var callbacks	= opt[3];
		var cb_player	= callbacks[0];
		var cb_obj		= callbacks[1];
		
		//cancel any current action callbacks
		cancel_actions();
		
		//set target object for player
		obj_player.target = obj;
		
		//invoke callback code in relevant objects
		obj_player.alarm[cb_player] = 1;
		obj.alarm[cb_obj] = 1;
	}
}