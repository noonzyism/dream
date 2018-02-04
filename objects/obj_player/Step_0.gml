//movement logic
depth = -y;
var mouse_dir = point_direction(x, y, mouse_x, mouse_y);
var cam_angle = camera_get_view_angle(control_camera.cam);

image_angle = -cam_angle;

if cam_angle >= 0 &&  cam_angle < 22.5  {
	image_index = 3;
}
if cam_angle >= 22.5 &&  cam_angle < 67.5 {
	image_index = 4;
}
if cam_angle >= 67.5 && cam_angle < 112.5 {
	image_index = 5;
}
if cam_angle >= 112 &&  cam_angle < 157.5 {
	image_index = 6;
}
if cam_angle >= 157.5 &&  cam_angle < 202.5 {
	image_index = 7;
}
if cam_angle >= 202.5  && cam_angle < 247.5 {
	image_index = 0;
}
if cam_angle >= 247.5  && cam_angle < 292.5 {
	image_index = 1;
}
if cam_angle >= 292.5  && cam_angle < 337.5 {
	image_index = 2;
}
if cam_angle >= 337.5 {
	image_index = 3;
}

if cam_angle < 0 &&  cam_angle > -22.5  {
	image_index = 3;
}
if cam_angle <= -22.5 &&  cam_angle > -67.5 {
	image_index = 2;
}
if cam_angle <= -67.5 && cam_angle > -112.5 {
	image_index = 1;
}
if cam_angle <= -112 &&  cam_angle > -157.5 {
	image_index = 0;
}
if cam_angle <= -157.5 &&  cam_angle > -202.5 {
	image_index = 7;
}
if cam_angle <= -202.5  && cam_angle > -247.5 {
	image_index = 6;
}
if cam_angle <= -247.5  && cam_angle > -292.5 {
	image_index = 5;
}
if cam_angle <= -292.5  && cam_angle > -337.5 {
	image_index = 4;
}
if cam_angle <= -337.5 {
	image_index = 3;
}


if mouse_check_button(mb_left) {
	
	speed = 5;
	direction = mouse_dir;
	
	collision_check = find_obstruction(x, y, mouse_x, mouse_y, 5);
	if (collision_check != undefined) {
		destx = collision_check[0];
		desty = collision_check[1];
	}
	else {
		destx = mouse_x;
		desty = mouse_y;
	}
}

if abs(x - destx) < 5 && abs(y - desty) < 5 {
	speed = 0;
}