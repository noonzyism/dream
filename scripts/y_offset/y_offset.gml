//useful for converting screen coordinates to real-world coordinates
//given a horizontal and vertical delta relative to the screen/camera's basis
//this converts those values to a y component relative to the world coordinates basis

var horizontal_delta = argument0;
var vertical_delta = argument1;

var horizontal_offset = horizontal_delta * global.screen_horizontal_unit_vector_y;
var vertical_offset = vertical_delta * global.screen_vertical_unit_vector_y;

return horizontal_offset + vertical_offset;