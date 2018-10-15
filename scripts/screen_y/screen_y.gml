
var inst = argument0;

//TESTING TODO: REMOVE
if (inst == inst_72E894B) {
	if (master_draw_in_foreground(inst)) {
		return 100000;
	}
	else {
		return -100000;
	}
}

return point_distance(inst.x, inst.y, obj_player.x + global.view_upper_x, obj_player.y - global.view_upper_y);


//CORRECT:
//return point_distance(inst.x, inst.y, inst.x + global.view_upper_x, inst.y - global.view_upper_y);



// FYI: put these lines in master_draw for debugging

/*
draw_set_color(c_red);
draw_circle(obj_player.x + global.view_upper_x, obj_player.y - global.view_upper_y, 350, true);
draw_line(obj_player.x, obj_player.y, obj_player.x + vglobal.view_upper_x, obj_player.y - global.view_upper_y);
draw_set_color(c_yellow);
draw_line(mouse_x, mouse_y, obj_player.x + global.view_upper_x, obj_player.y - global.view_upper_y);
*/