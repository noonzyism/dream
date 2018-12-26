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


global.screen_horizontal_unit_vector_x = lengthdir_x(1, global.cam_angle);
global.screen_vertical_unit_vector_x = -lengthdir_x(1, global.cam_angle - 90);

global.screen_horizontal_unit_vector_y = -lengthdir_y(1, global.cam_angle);
global.screen_vertical_unit_vector_y = lengthdir_y(1, global.cam_angle - 90);

global.view_upper_y = lengthdir_y(global.view_diameter/2, global.cam_angle - 90);
global.view_upper_x = lengthdir_x(global.view_diameter/2, global.cam_angle - 90);

/*
//ALTITUDE TEST CODE
if (keyboard_check(vk_up)) {
	cam_modifier += 0.005;
}

if (keyboard_check(vk_down)) {
	if (cam_modifier > 1) {
		cam_modifier -= 0.005;
	}
}



obj_player.image_xscale = 0.5 * cam_modifier;
obj_player.image_yscale = 0.5 * cam_modifier;

//camera_set_view_size(global.cam, global.game_width * cam_modifier, global.game_height * cam_modifier);