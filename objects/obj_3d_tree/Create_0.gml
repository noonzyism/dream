draw_3d(2); //the parameter '2' is the spacing value to use in between sprite layers
//draw_3d_complex(2);


//these variables are REQUIRED to be set for 3d objects
//they define the boundary box of the object for depth checking
//NOTE: using spr_lamppost for the boundaries because spr_tree has a wide sprite boundary caused by the leaves, 
//but for the player's purposes we can ignore the leaves as the player should always be drawn under them anyways
//all we care about is the tree's trunk, which similarly matches the lamppost boundary
left_offset = sprite_get_bbox_left(spr_lamppost) - sprite_get_xoffset(spr_lamppost);
right_offset = sprite_get_bbox_right(spr_lamppost) - sprite_get_xoffset(spr_lamppost);
bottom_offset = sprite_get_bbox_bottom(spr_lamppost) - sprite_get_yoffset(spr_lamppost);
top_offset = sprite_get_bbox_top(spr_lamppost) - sprite_get_yoffset(spr_lamppost);


//WIP testing home-grown camera rotation code
//holds the offset from the player, which we're treating as the camera rotation origin for now
init_x = x - obj_player.x;
init_y = y - obj_player.y;
delta = distance_to_object(obj_player);
delta_x = x - obj_player.x;
delta_y = y - obj_player.y;
init_angle = point_direction(obj_player.x, obj_player.y, x, y);