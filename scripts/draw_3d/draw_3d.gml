//uses variables from the calling object

var spacing = argument0;

layer_count = sprite_get_number(sprite_index);

var i = 0;
while (i < layer_count) {
	draw_request(id, i, spacing, false);
	i += 1;
}