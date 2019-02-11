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


//WIP testing home-grown camera rotation code
//holds the offset from the player, which we're treating as the camera rotation origin for now
init_x = x - obj_player.x;
init_y = y - obj_player.y;
delta_x = x - obj_player.x;
delta_y = y - obj_player.y;
delta = distance_to_object(obj_player);

init_angle = point_direction(obj_player.x, obj_player.y, x, y);