var obj = argument0;

if (complex == true) {
	var delta = 24;

	if (collision_line(obj_player.x + left_offset_x + x_offset(0, delta), obj_player.y + left_offset_y + y_offset(0, delta), obj_player.x - global.view_upper_x + left_offset_x, obj_player.y + global.view_upper_y + left_offset_y, obj, false, true))
	{
		return true;
	}
	if (collision_line(obj_player.x + right_offset_x + x_offset(0, delta), obj_player.y + right_offset_y + y_offset(0, delta), obj_player.x - global.view_upper_x + right_offset_x, obj_player.y + global.view_upper_y + right_offset_y, obj, false, true))
	{
		return true;
	}

	return false;
}
else {
	var x0 = global.screen_vertical_unit_vector_x;
	var y0 = global.screen_vertical_unit_vector_y;
	var vx = obj.x - obj_player.x;
	var vy = obj.y - obj_player.y;

	if (dot_product(x0, y0, vx, vy) > 0) {
		return true;
	}
	
	return false;
}