var cam_angle = camera_get_view_angle(master_camera.cam);
depth = -10;
image_angle = -cam_angle;
if (destx != x) && (desty != y) {
	move_angle = point_direction(x, y, destx, desty) - 270;
}
var face_direction = (move_angle + cam_angle) mod 360;

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
			destx = x;
			desty = y;
		}
	}
}