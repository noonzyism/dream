//WIP testing home-grown camera rotation code

//holds the offset from the player, which we're treating as the camera rotation origin for now
delta_x = x - obj_player.x;
delta_y = y - obj_player.y;

//my_cam_angle is being manipulated in master_draw as follows:
/*
if (keyboard_check(vk_right)) {
	global.my_cam_angle -= 5;
}

if (keyboard_check(vk_left)) {
	global.my_cam_angle += 5;
}
*/

curr_angle = global.my_cam_angle + init_angle;

//translate key shift movement into a (-1, 1) range
my_xc = sin(curr_angle * pi/180);
my_yc = cos(curr_angle * pi/180);

x = obj_player.x + delta * my_xc;
y = obj_player.y + delta * my_yc;