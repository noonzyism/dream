//uses variables from the calling object
//specifies a level to draw a light emission at

var spacing		= argument0;
var light_level = argument1; 

layer_count = sprite_get_number(sprite_index);

var i = 0;
while (i < layer_count) {
	if (i == light_level) {
		draw_request(id, i, spacing, true);
	}
	else {
		draw_request(id, i, spacing, false);
	}
	i += 1;
}