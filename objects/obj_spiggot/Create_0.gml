//SPIGGOTS!!!
//this object is an example of small mosquito-like insects that fly around randomly
//unlike mosquitos, these guys aren't a pain in the butt and don't bite :)


image_alpha = 0;


flutter_interval = 10;
move_interval = 60;

vanish_rate = 0.01;

move = 0;

alarm[0] = flutter_interval;

alarm[1] = move_interval;

draw_2d(30);


left_offset = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
right_offset = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
bottom_offset = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
top_offset = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);