// draw_3d_complex is identical to draw_3d
// except that it uses a different algorithm 
// for depth calculations against the player, 
// which is necessary for larger objects that 
// occupy more collision space than a small point

draw_3d_complex(4); //the parameter is the spacing value to use in between sprite layers


//these variables are REQUIRED to be set for 3d objects
//they define the boundary box of the object for depth checking
left_offset = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
right_offset = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
bottom_offset = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
top_offset = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);