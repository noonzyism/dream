draw_2d_light(1); //the parameter is the level we want to draw the object (and light) at

//light_color and light_radius are REQUIRED to be set in the create event if calling draw_2d_light/draw_3d_light
//they are used to determine the emitted light characteristics
light_color = c_orange;
light_radius = 128;
light_bloom = 1; //the speed of the light bloom
light_flicker = 20; //rate at which the light expands/contracts
alarm[0] = light_flicker;

//these 4 variables are required for all objects using the draw_3d/draw_2d functions
left_offset = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
right_offset = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
bottom_offset = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
top_offset = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);