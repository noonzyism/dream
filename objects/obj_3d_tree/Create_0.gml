draw_3d(2); //the parameter '2' is the spacing value to use in between sprite layers


//these variables are REQUIRED to be set for 3d objects
//they define the boundary box of the object for depth checking
//NOTE: using spr_lamppost for the boundaries because spr_tree has a wide sprite boundary caused by the leaves, 
//but for the player's purposes we can ignore the leaves as the player should always be drawn under them anyways
//all we care about is the tree's trunk, which similarly matches the lamppost boundary
left_offset = sprite_get_bbox_left(spr_lamppost) - sprite_get_xoffset(spr_lamppost);
right_offset = sprite_get_bbox_right(spr_lamppost) - sprite_get_xoffset(spr_lamppost);
bottom_offset = sprite_get_bbox_bottom(spr_lamppost) - sprite_get_yoffset(spr_lamppost);
top_offset = sprite_get_bbox_top(spr_lamppost) - sprite_get_yoffset(spr_lamppost);