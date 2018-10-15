//this script should ONLY be called by master_draw in the draw event
//checks for an overlap between the given bounding box and current instance/draw request

/* TODO: filter out a majority of these calls and save compute time by returning false immediately for objects that are far enough away to be ignored
if (point_distance(obj_player.x, obj_player.y, inst.x, inst.y) > 200) {
	return false;
}
*/

/*
if (!bounddetect) {
	return within(draw_x, draw_y, argument0, argument1, argument2, argument3); 
}
*/

//return point_in_circle(draw_x, draw_y, argument0, argument1, argument2);

return rectangle_in_circle(draw_x + inst.left_offset, draw_y + inst.top_offset, draw_x + inst.right_offset, draw_y + inst.bottom_offset, argument0, argument1, argument2);

//return rectangle_in_rectangle(draw_x + inst.left_offset, draw_y + inst.top_offset, draw_x + inst.right_offset, draw_y + inst.bottom_offset, argument0, argument2, argument1, argument3);