/// @description Insert description here
// You can write your code in this editor
cam_x = camera_get_view_x(control_camera.cam);
cam_y = camera_get_view_y(control_camera.cam);

draw_sprite_ext(sprite8, 0, cam_x + 16, cam_y + 16, 1.5, 1.5, 0, c_white, 0.95);

//drawing mouse hover-over options

if (hoveropts_amount > 0) {
	var action = ds_list_find_value(hoveropts, 0);
	draw_text(mouse_x + 16, mouse_y, action[2]);

	if (hoveropts_amount > 1) {
		draw_text(mouse_x + 16, mouse_y + 16, string(hoveropts_amount - 1)+" more option(s)");
	}
}

show_debug_message("hoveropts_amount="+string(hoveropts_amount));

var i = 0;
while (i < hoveropts_amount) {
	show_debug_message("hoveropts["+string(i)+"]="+string(ds_list_find_value(hoveropts, i)));
	i += 1;
}


if (mouse_check_button(mb_left)) {
	if (hoveropts_amount > 0) {
		draw_sprite(sprite10, -1, mouse_x, mouse_y);
	}
	else {
		draw_sprite(sprite9, -1, mouse_x, mouse_y);
	}
}
