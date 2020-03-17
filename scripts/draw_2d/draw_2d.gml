//uses variables from the calling object
//draws a 2d sprite at a given height

var height = argument0;

//these 4 variables are required for all objects using the draw_3d/draw_2d functions
left_offset = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
right_offset = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
bottom_offset = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
top_offset = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

draw_request(id, -1, height, false, false, -1);