//TODO: this calculation is absurdly botched but it still does the job for now
var inst = argument0;

return point_distance(inst.x, inst.y, obj_player.x + global.view_upper_x, obj_player.y - global.view_upper_y);



// FYI: put these lines in master_draw for debugging

/*
draw_set_color(c_red);
draw_circle(obj_player.x + global.view_upper_x, obj_player.y - global.view_upper_y, 350, true);
draw_line(obj_player.x, obj_player.y, obj_player.x + vglobal.view_upper_x, obj_player.y - global.view_upper_y);
draw_set_color(c_yellow);
draw_line(mouse_x, mouse_y, obj_player.x + global.view_upper_x, obj_player.y - global.view_upper_y);
*/