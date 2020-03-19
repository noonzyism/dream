depth = 0;

global.drawstack = ds_priority_create();

global.drawstack_3d = ds_priority_create();

drawsequence = ds_list_create();

light_was_drawn = false;


image_speed = 0.1;

display_reset(8, true);

//these vals are for assuring the light surface gets drawn right in the center of the camera's focus to fully encompass the screen even when the view is rotated
//WARN: they get set in the step event just once (since the values they rely on are mostly unchanged once the game start - should that change, they need to be fetched on every step event/change instead)
surface_offset_x = -1;
surface_offset_y = -1;


// test code for perspective offsetting
view_radius = global.view_diameter/2;