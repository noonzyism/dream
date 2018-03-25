//used for calculating 3d projections
xc = sin(global.cam_angle * pi/180);
yc = cos(global.cam_angle * pi/180);

//convert our drawstack (ordered by depth) to an iterable list for quick drawing
if (ds_list_size(drawsequence) != ds_priority_size(global.drawstack_3d)) {
	ds_list_clear(drawsequence);
	var count = ds_priority_size(global.drawstack_3d);
	var i = 0;
	var tempstack = ds_priority_create();
	ds_priority_copy(tempstack, global.drawstack_3d);
	
	while (i < count) {
		ds_list_add(drawsequence, ds_priority_delete_max(tempstack));
		i += 1;
	}
}