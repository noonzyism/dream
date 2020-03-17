/*
var layer_count = ceil(sprite_height / spacing);

var i = 0;
while (i < layer_count) {
	var curr_height = i * spacing;
	draw_x = x + curr_height * xc;
	draw_y = y - curr_height * yc;
	draw_sprite_part(sprite_index, 
					 image_index, 
					 0, 
					 (sprite_height - curr_height), 
					 sprite_width, 
					 spacing, 
					 draw_x,
					 draw_y);
	i += 1;
}