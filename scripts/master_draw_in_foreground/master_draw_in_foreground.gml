var obj = argument0;

if (inst == inst_72E894B) {
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

/*
var count = 0;

var xs = ds_stack_create();
var ys = ds_stack_create();

var vx = -1;
var vy = -1;

var x0 = global.screen_vertical_unit_vector_x;
var y0 = global.screen_vertical_unit_vector_y;

var x1 = obj.x + obj.left_offset - obj_player.x;
var y1 = obj.y + obj.top_offset - obj_player.y;

var x2 = obj.x + obj.left_offset - obj_player.x;
var y2 = obj.y + obj.bottom_offset - obj_player.y;

var x3 = obj.x + obj.right_offset - obj_player.x;
var y3 = obj.y + obj.bottom_offset - obj_player.y;

var x4 = obj.x + obj.right_offset - obj_player.x;
var y4 = obj.y + obj.top_offset - obj_player.y;


if (dot_product(x0, y0, x1, y1) > 0) {
	count += 1;
	ds_stack_push(xs, obj.x + obj.left_offset);
	ds_stack_push(ys, obj.y + obj.top_offset);
	draw_circle(obj.x + obj.left_offset, obj.y + obj.top_offset, 50, true);
}

if (dot_product(x0, y0, x2, y2) > 0) {
	count += 1;
	ds_stack_push(xs, obj.x + obj.left_offset);
	ds_stack_push(ys, obj.y + obj.bottom_offset);
	draw_circle(obj.x + obj.left_offset, obj.y + obj.bottom_offset, 50, true);
}

if (dot_product(x0, y0, x3, y3) > 0) {
	count += 1;
	ds_stack_push(xs, obj.x + obj.right_offset);
	ds_stack_push(ys, obj.y + obj.bottom_offset);
	draw_circle(obj.x + obj.right_offset, obj.y + obj.bottom_offset, 50, true);
}

if (dot_product(x0, y0, x4, y4) > 0) {
	count += 1;
	ds_stack_push(xs, obj.x + obj.right_offset);
	ds_stack_push(ys, obj.y + obj.top_offset);
	draw_circle(obj.x + obj.right_offset, obj.y + obj.top_offset, 50, true);
}

var tx, ty;
		
if (count > 1) {
	
	vx = ds_stack_pop(xs);
	vy = ds_stack_pop(ys);
	
	while (count > 1) {
		count -= 1;
		
		tx = ds_stack_pop(xs);
		ty = ds_stack_pop(ys);
		
		var left_intersection	= lines_intersection(obj_player.x + left_offset_x, 
													 obj_player.y + left_offset_y, 
													 obj_player.x - global.view_upper_x + left_offset_x, 
													 obj_player.y + global.view_upper_y + left_offset_y,
													 vx, vy, tx, ty, true);
													 
		var right_intersection	= lines_intersection(obj_player.x + right_offset_x, 
							                         obj_player.y + right_offset_y, 
													 obj_player.x - global.view_upper_x + right_offset_x, 
													 obj_player.y + global.view_upper_y + right_offset_y,
													 vx, vy, tx, ty, true);
													 
		if ((left_intersection != 0) || (right_intersection != 0)) {
			return true;
		}
	}
}


return false;