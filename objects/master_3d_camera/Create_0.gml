// setting and forgetting these globals for now so references to them don't break
global.game_width = 1280;
global.game_height = 720;
global.cam_angle = 0;
global.cam_x = 0;
global.cam_y = 0;
global.view_diameter = ceil(sqrt(sqr(global.game_width) + sqr(global.game_height)));

global.screen_horizontal_unit_vector_x = lengthdir_x(1, global.cam_angle);
global.screen_vertical_unit_vector_x = -lengthdir_x(1, global.cam_angle - 90);

global.screen_horizontal_unit_vector_y = -lengthdir_y(1, global.cam_angle);
global.screen_vertical_unit_vector_y = lengthdir_y(1, global.cam_angle - 90);

global.view_upper_y = lengthdir_y(global.view_diameter/2, global.cam_angle - 90);
global.view_upper_x = lengthdir_x(global.view_diameter/2, global.cam_angle - 90);


// camera creation code

// Camera
camera  = view_camera[0];

// 3D camera properties
camDist = -300;
camFov  = 90;
camAsp  = camera_get_view_width(camera) / camera_get_view_height(camera);
_camAngle = 0;


// Rotation
camSensitivityX = 1;
camSensitivityY = 1;

camAngleXRaw = 90;
camAngleYRaw = 0;
camAngleX = camAngleXRaw;
camAngleY = camAngleYRaw;


/*
TODO: FOR CAMERA ROTATION:
There are two variable sets that need to be mucked with:
- camAngleX/camAngleY right up there ^
- xup,yup params in the viewMat in draw begin event

EXAMPLE hard-coded sets:
( 0,  1,  0) for up & (  90, -15) for angle = default view
(-1,  0,  0) for up & (  75,   0) for angle = looking towards right side/horizontal view
( 0, -1,  0) for up & (  90,  15) for angle = inverted/upside down view
( 1,  0,  0) for up & ( 105,   0) for angle = looking towards left side/horizontal view

camAngleXRaw = 90
camAngleYRaw = 0

*/


//camera movement settings - for smoother panning
cam_velocity = 0;
cam_accel = 0.2; //acceleration
cam_deccel = 0.05; //decceleration
cam_max_velocity = 2;