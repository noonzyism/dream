//draw_3d_at is the same as draw_3d, but allows specify a starting height for drawing a 3d object some distance off the ground
//uses variables from the calling object
//adds the calling object's sprite image indices/layers to the draw queue that's iterated on by master_draw
//arg0 = spacing between sprite layers
//arg1 = starting height position
//TODO: currently broken because we set height param to start_height + layer_index, master_draw currently assumes height = layer_index, this is how the image index to be drawn is resolved without being passed manually

var spacing			= argument0;
var start_height	= argument1;

layer_count = sprite_get_number(sprite_index);

var i = 0;
while (i < layer_count) {
	draw_request(id, i + start_height, spacing, false, false, false);
	i += 1;
}