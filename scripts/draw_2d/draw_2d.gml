//uses variables from the calling object

var height = argument0;

layer_count = sprite_get_number(sprite_index);


draw_request(id, height, 1, false);

/*
var i = 0;
while (i < layer_count) {
	draw_request(id, i, spacing, false);
	i += 1;
}