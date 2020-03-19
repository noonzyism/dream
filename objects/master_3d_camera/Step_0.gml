// Drag/Tilt
/*
if (mouse_check_button(mb_middle)) {
	var _deltaX = device_mouse_x_to_gui(0) - mouse_x_prev;
	var _deltaY = device_mouse_y_to_gui(0) - mouse_y_prev;
	
	camAngleXRaw = clamp(camAngleX - _deltaX * camSensitivityX, 0+5, 180-5);
	camAngleYRaw = clamp(camAngleY + _deltaY * camSensitivityY, -90+5, 90-5);
	
	show_debug_message(camAngleY);
}

camAngleX += angle_difference(camAngleXRaw, camAngleX) * 0.2;
camAngleY += angle_difference(camAngleYRaw, camAngleY) * 0.2;

mouse_x_prev = device_mouse_x_to_gui(0);
mouse_y_prev = device_mouse_y_to_gui(0);
*/
show_debug_message(string(_camAngle));

if (_camAngle > 360) {
	_camAngle -= 360;
}
if (_camAngle < -360) {
	_camAngle += 360;
}

if (keyboard_check(vk_left)) {
	if (cam_velocity > -cam_max_velocity) {
		cam_velocity -= cam_accel; //camera acceleration
	}
}

if (keyboard_check(vk_right)) {
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

_camAngle += cam_velocity;

xc = sin(_camAngle * pi/180);
yc = cos(_camAngle * pi/180);

camAngleX = camAngleXRaw + (15*xc);
camAngleY = camAngleYRaw - (15*yc);

global.cam_angle = -_camAngle;