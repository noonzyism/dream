depth = -50;

global.drawstack = ds_priority_create();

global.drawstack_3d = ds_priority_create();

drawsequence = ds_list_create();
//display_reset(8, false);
//gpu_set_tex_filter(true);

light_was_drawn = false;


//used for light-emitting objects - make these properties more dynamic/variable on a per-object basis
radius = 128;
bloom = 0.4; //the speed of the light bloom
flicker = 20; //rate at which the light expands/contracts

alarm[0] = flicker;

image_speed = 0.2;



//these vals are for assuring the light surface gets drawn right in the center of the camera's focus to fully encompass the screen even when the view is rotated
//WARN: they get set in the step event just once (since the values they rely on are mostly unchanged once the game start - should that change, they need to be fetched every step event instead)
surface_offset_x = -1;
surface_offset_y = -1;