//movement logic
CAM_ANGLE = global.cam_angle;

destx = x;
desty = y;

if keyboard_check(ord("W")) {
	destx += lengthdir_x(velocity, CAM_ANGLE - 90);
	desty -= lengthdir_y(velocity, CAM_ANGLE - 90);
}
if keyboard_check(ord("S")) {
	destx -= lengthdir_x(velocity, CAM_ANGLE - 90);
	desty += lengthdir_y(velocity, CAM_ANGLE - 90);
}
if keyboard_check(ord("A")) {
	destx -= lengthdir_x(velocity, CAM_ANGLE);
	desty += lengthdir_y(velocity, CAM_ANGLE);
}
if keyboard_check(ord("D")) {
	destx += lengthdir_x(velocity, CAM_ANGLE);
	desty -= lengthdir_y(velocity, CAM_ANGLE);
}

if (destx != x) || (desty != y) {
	moving = true;
	move_angle = point_direction(x, y, destx, desty) - 270;
}
else {
	moving = false;
}

if (moving) {
	image_speed = 1;
}
else {
	image_speed = 0.1;
}

x = destx;
y = desty;

image_angle = -CAM_ANGLE;
face_direction = (move_angle + CAM_ANGLE) mod 360;

if face_direction >= 0 &&  face_direction < 22.5  {
	//image_index = 3;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_b");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_b");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_b");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_b");
	
}
if face_direction >= 22.5 &&  face_direction < 67.5 {
	//image_index = 4;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_br");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_br");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_br");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_br");
}
if face_direction >= 67.5 && face_direction < 112.5 {
	//image_index = 5;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_r");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_r");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_r");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_r");
}
if face_direction >= 112 &&  face_direction < 157.5 {
	//image_index = 6;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_tr");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_tr");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_tr");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_tr");
}
if face_direction >= 157.5 &&  face_direction < 202.5 {
	//image_index = 7;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_t");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_t");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_t");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_t");
}
if face_direction >= 202.5  && face_direction < 247.5 {
	//image_index = 0;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_tl");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_tl");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_tl");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_tl");
}
if face_direction >= 247.5  && face_direction < 292.5 {
	//image_index = 1;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_l");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_l");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_l");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_l");
}
if face_direction >= 292.5  && face_direction < 337.5 {
	//image_index = 2;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_bl");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_bl");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_bl");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_bl");
}
if face_direction >= 337.5 {
	//image_index = 3;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_b");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_b");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_b");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_b");
}

if face_direction < 0 &&  face_direction > -22.5  {
	//image_index = 3;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_b");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_b");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_b");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_b");
}
if face_direction <= -22.5 &&  face_direction > -67.5 {
	//image_index = 2;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_bl");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_bl");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_bl");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_bl");
}
if face_direction <= -67.5 && face_direction > -112.5 {
	//image_index = 1;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_l");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_l");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_l");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_l");
}
if face_direction <= -112 &&  face_direction > -157.5 {
	//image_index = 0;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_tl");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_tl");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_tl");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_tl");
}
if face_direction <= -157.5 &&  face_direction > -202.5 {
	//image_index = 7;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_t");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_t");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_t");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_t");
}
if face_direction <= -202.5  && face_direction > -247.5 {
	//image_index = 6;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_tr");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_tr");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_tr");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_tr");
}
if face_direction <= -247.5  && face_direction > -292.5 {
	//image_index = 5;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_r");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_r");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_r");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_r");
}
if face_direction <= -292.5  && face_direction > -337.5 {
	//image_index = 4;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_br");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_br");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_br");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_br");
}
if face_direction <= -337.5 {
	//image_index = 3;
	spr_head = asset_get_index("spr_head_base_" + string(moving ? "run" : "idle") + "_b");
	spr_torso = asset_get_index("spr_torso_base_" + string(moving ? "run" : "idle") + "_b");
	spr_legs = asset_get_index("spr_legs_base_" + string(moving ? "run" : "idle") + "_b");
	spr_feet = asset_get_index("spr_feet_base_" + string(moving ? "run" : "idle") + "_b");
}

/*
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
			moving = true;
		}
		else {
			//if something blocked our movement, stop
			destx = x;
			desty = y;
			moving = false;
			
			if (target != -1) {
				if (distance_to_object(target) >= 16) {
					//if we were obstructed & not close to our target, reset the target & cancel actions
					cancel_actions();
				}
			}
		}
	}
}
else {
	moving = false;
}

*/

