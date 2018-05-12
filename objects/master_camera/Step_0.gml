if (global.cam_angle > 360) {
	global.cam_angle -= 360;
}
if (global.cam_angle < -360) {
	global.cam_angle += 360;
}

if (keyboard_check(vk_right)) {
	if (cam_velocity > -cam_max_velocity) {
		cam_velocity -= cam_accel; //camera acceleration
	}
}

if (keyboard_check(vk_left)) {
	if (cam_velocity < cam_max_velocity) {
		cam_velocity += cam_accel; //camera acceleration
	}
}

if !keyboard_check(vk_left) && !keyboard_check(vk_right) {
	if (cam_velocity > 0) {
		cam_velocity -= cam_deccel;
	}
	if (cam_velocity < 0) {
		cam_velocity += cam_deccel;
	}
}

global.cam_angle += cam_velocity;
camera_set_view_angle(global.cam, global.cam_angle);
global.cam_x = camera_get_view_x(global.cam);
global.cam_y = camera_get_view_y(global.cam);
global.cam_xview = camera_get_view_x(global.cam);
global.cam_yview = camera_get_view_y(global.cam);

//show_debug_message("view_y="+string(camera_get_view_y(global.cam))+" view_border_y="+string(camera_get_view_border_y(global.cam)));