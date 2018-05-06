/// @description Insert description here
// You can write your code in this editor
view_enabled = true;

view_set_visible(0, true);

view_set_wport(0, 1024);
view_set_hport(0, 768);

global.cam = camera_create_view(300, 300, 1024, 768, 0, obj_player, -1, -1, 450, 500);
global.cam_angle = 0;
global.cam_x = 0;
global.cam_y = 0;

view_set_camera(0, global.cam);
camera_set_view_angle(global.cam, global.cam_angle);


cam_velocity = 0;
cam_accel = 0.2; //acceleration
cam_deccel = 0.05; //decceleration
cam_max_velocity = 2;