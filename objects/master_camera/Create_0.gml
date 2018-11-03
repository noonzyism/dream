global.game_width = 1280;
global.game_height = 720;

view_set_wport(0, global.game_width);
view_set_hport(0, global.game_height);

view_enabled = true;

view_set_visible(0, true);

global.cam = camera_create_view(300, 300, global.game_width, global.game_height, 0, obj_player, -1, -1, global.game_width/2, global.game_height/2);
global.cam_angle = 0;
global.cam_x = 0;
global.cam_y = 0;

//this value indicates the side length of the bounding box that fully covers the area of the rotating rectangular view (used for creating the light surface)
//determined by calculating the view's hypotenuse
global.view_diameter = ceil(sqrt(sqr(global.game_width) + sqr(global.game_height)));

view_set_camera(0, global.cam);
camera_set_view_angle(global.cam, global.cam_angle);
camera_set_view_size(global.cam, global.game_width, global.game_height);

surface_resize(application_surface, global.game_width, global.game_height);

window_set_size(global.game_width, global.game_height);


//camera movement settings - for smoother panning
cam_velocity = 0;
cam_accel = 0.2; //acceleration
cam_deccel = 0.05; //decceleration
cam_max_velocity = 2;