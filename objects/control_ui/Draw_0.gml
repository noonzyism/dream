/// @description Insert description here
// You can write your code in this editor
cam_x = global.cam_x;
cam_y = global.cam_y;

if (mouse_check_button_pressed(mb_left)) {
	instance_activate_object(ui_cursor);
	if (ds_queue_size(global.opts) > 0) {
		ui_cursor.sprite_index = sprite10;
	}
	else {
		ui_cursor.sprite_index = sprite9;
	}
}


while (!ds_queue_empty(global.opts)) {
	var opt			= ds_queue_dequeue(global.opts);
	var obj			= opt[0];
	var name		= opt[1];
	var verb		= opt[2];
	
	draw_text_ext_transformed(mouse_x, mouse_y, string(verb) + " " + string(name), 1, 200, 1, 1, -global.cam_angle);
	
	if (mouse_check_button_pressed(mb_left)) {
		//opt[3] holds the alarm callbacks for the player and interactive object
		var callbacks	= opt[3];
		var cb_player	= callbacks[0];
		var cb_obj		= callbacks[1];
		
		//invoke callback code in relevant objects
		obj_player.alarm[cb_player] = 1;
		obj.alarm[cb_obj] = 1;
	}
}












///////////////////////////////////////////////////////////////////////////////////////////
//code below this point is deprecated

//request_draw(sprite8, 0, cam_x + 16, cam_y + 16, 1.5, 1.5, 0, c_white, 0.95);

//drawing mouse hover-over options
/*
if (hoveropts_amount > 0) {
	if (show_hoveropts = false) {
		var action = ds_list_find_value(hoveropts, 0);
		draw_text(mouse_x + 24, mouse_y, action[2]);
		if (hoveropts_amount > 1) {
			draw_text(mouse_x + 24, mouse_y + 24, string(hoveropts_amount - 1)+" more option(s)");
		}
	}
	else {
		var i = 0;
		while (i < hoveropts_amount) {
			var action = ds_list_find_value(hoveropts, i);
			request_draw(spr_dropdown_entry, -1, mouse_x + 24, mouse_y + (i*24), 1, 1, 0, c_white, 1, depth);
			draw_text(mouse_x + 24, mouse_y + (i*24), action[2]);
			i += 1;
		}
	}
}

show_debug_message("hoveropts_amount="+string(hoveropts_amount));

var i = 0;
while (i < hoveropts_amount) {
	show_debug_message("hoveropts["+string(i)+"]="+string(ds_list_find_value(hoveropts, i)));
	i += 1;
}
*/

