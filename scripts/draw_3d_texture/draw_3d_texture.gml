//uses variables from the calling object
//adds the calling object's sprite image indices/layers to the draw queue that's iterated on by master_draw

var spacing = argument0;

//these 4 variables are required for all objects using the draw_3d/draw_2d functions
left_offset = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
right_offset = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
bottom_offset = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
top_offset = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

var i = 0;
var curr_height = 0;
var layer_count = ceil(sprite_height / spacing);

while (i <= layer_count) {
	curr_height = i * spacing;
	draw_request(id, i, curr_height, false, true, (sprite_height - curr_height));
	i += 1;
}

draw_request(id, i, (i * spacing), false, true, -1);