/// @description Insert description here
// You can write your code in this editor
cam_x = camera_get_view_x(master_camera.cam);
cam_y = camera_get_view_y(master_camera.cam);

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

if (mouse_check_button_pressed(mb_left)) {
	instance_activate_object(ui_cursor);
}
