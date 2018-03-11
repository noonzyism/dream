if (cam_angle > 360) {
	cam_angle -= 360;
}
if (cam_angle < -360) {
	cam_angle += 360;
}

camera_set_view_angle(cam, cam_angle);

if (keyboard_check(vk_right)) {
	if (cam_velocity > -cam_max_velocity) {
		cam_velocity -= 0.2; //camera acceleration
	}
}

if (keyboard_check(vk_left)) {
	if (cam_velocity < cam_max_velocity) {
		cam_velocity += 0.2; //camera acceleration
	}
}

cam_angle += cam_velocity;

if !keyboard_check(vk_left) && !keyboard_check(vk_right) {
	if (cam_velocity > 0) {
		cam_velocity -= 0.1;
	}
	if (cam_velocity < 0) {
		cam_velocity += 0.1;
	}
}


show_debug_message("camspeed="+string(cam_velocity)+" cam_angle="+string(camera_get_view_angle(cam)));