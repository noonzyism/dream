//show_debug_message("x: "+string(x)+" y: "+string(y));

//movement logic
mouse_dir = point_direction(x, y, mouse_x, mouse_y);
cam_angle = global.cam_angle;
image_angle = -cam_angle;
if (destx != x) && (desty != y) {
	move_angle = point_direction(x, y, destx, desty) - 270;
}
face_direction = (move_angle + cam_angle) mod 360;
//show_debug_message("face direction: "+string(face_direction));

if face_direction >= 0 &&  face_direction < 22.5  {
	image_index = 3;
}
if face_direction >= 22.5 &&  face_direction < 67.5 {
	image_index = 4;
}
if face_direction >= 67.5 && face_direction < 112.5 {
	image_index = 5;
}
if face_direction >= 112 &&  face_direction < 157.5 {
	image_index = 6;
}
if face_direction >= 157.5 &&  face_direction < 202.5 {
	image_index = 7;
}
if face_direction >= 202.5  && face_direction < 247.5 {
	image_index = 0;
}
if face_direction >= 247.5  && face_direction < 292.5 {
	image_index = 1;
}
if face_direction >= 292.5  && face_direction < 337.5 {
	image_index = 2;
}
if face_direction >= 337.5 {
	image_index = 3;
}

if face_direction < 0 &&  face_direction > -22.5  {
	image_index = 3;
}
if face_direction <= -22.5 &&  face_direction > -67.5 {
	image_index = 2;
}
if face_direction <= -67.5 && face_direction > -112.5 {
	image_index = 1;
}
if face_direction <= -112 &&  face_direction > -157.5 {
	image_index = 0;
}
if face_direction <= -157.5 &&  face_direction > -202.5 {
	image_index = 7;
}
if face_direction <= -202.5  && face_direction > -247.5 {
	image_index = 6;
}
if face_direction <= -247.5  && face_direction > -292.5 {
	image_index = 5;
}
if face_direction <= -292.5  && face_direction > -337.5 {
	image_index = 4;
}
if face_direction <= -337.5 {
	image_index = 3;
}

if mouse_check_button(mb_left) {
	destx = mouse_x;
	desty = mouse_y;
}

if abs(x - destx) > 5 || abs(y - desty) > 5 {
	var vx = destx - x;
	var vy = desty - y;
	var inner = sqr(vx) + sqr(vy);
	if (inner > 0) {
		var dist = sqrt(inner);
		var dx = (vx/dist) * velocity;
		var dy = (vy/dist) * velocity;
		if !obstruction_at(x + dx, y + dy) {
			x += dx;
			y += dy;
		}
		else {
			//if something blocked our movement, stop
			destx = x;
			desty = y;
			if (fishing == false) { //todo: re-work fishing event so that it doesn't rely on this condition to not reset the target obj (since fishing always leads to a collision event against the water)
				target = -1; //reset the target action/object (if there was one)
			}
		}
	}
}

//show_debug_message("player depth="+string(depth));