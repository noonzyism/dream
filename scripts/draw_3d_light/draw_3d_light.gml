//uses variables from the calling object
//adds the calling object's sprite image indices to the draw queue that's iterated on by master_draw
//works the same as draw_3d except that it allows
//a level to be specified to draw a light emission at

var spacing		= argument0;
var light_level = argument1; 

layer_count = sprite_get_number(sprite_index);

var i = 0;
while (i < layer_count) {
	if (i == light_level) {
		draw_request(id, i, spacing, true, false, false);
	}
	else {
		draw_request(id, i, spacing, false, false, false);
	}
	i += 1;
}