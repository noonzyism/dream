if (cam_angle > 360) {
	cam_angle -= 360;
}
if (cam_angle < -360) {
	cam_angle += 360;
}

camera_set_view_angle(cam, cam_angle);

if (keyboard_check(vk_right)) {
	if (cam_velocity > -5.5) {
		cam_velocity -= 0.4; //camera acceleration
	}
}

if (keyboard_check(vk_left)) {
	if (cam_velocity < 5.5) {
		cam_velocity += 0.4; //camera acceleration
	}
}

cam_angle += cam_velocity;

if !keyboard_check(vk_left) && !keyboard_check(vk_right) {
	if (cam_velocity > 0) {
		cam_velocity -= 0.2;
	}
	if (cam_velocity < 0) {
		cam_velocity += 0.2;
	}
}


show_debug_message("camspeed="+string(cam_velocity)+" cam_angle="+string(camera_get_view_angle(cam)));