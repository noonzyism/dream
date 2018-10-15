draw_3d_light(1, 45); //2 is the spacing value to use in between sprite layers

//these variables are required if using bound detect
left_offset = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
right_offset = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
bottom_offset = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
top_offset = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);