//movement logic
depth = -y;
var mouse_dir = point_direction(x, y, mouse_x, mouse_y);

if mouse_check_button(mb_left) {
	image_angle = mouse_dir;
	
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

show_debug_message("x="+string(x)+" y="+string(y)+" destx="+string(destx)+" desty="+string(desty));

