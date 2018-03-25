/*
while (ds_priority_size(global.drawstack) > 0) {
	drawrequest = ds_priority_delete_max(global.drawstack);
	
	var sprite = drawrequest[0];
	var subimg = drawrequest[1];
	var sprx = drawrequest[2];
	var spry = drawrequest[3];
	var xscale = drawrequest[4];
	var yscale = drawrequest[5];
	var rot = drawrequest[6];
	var color = drawrequest[7];
	var alpha = drawrequest[8];
	
	//gpu_set_tex_filter(interpolate?);
	
	image_speed = 0.2;

	draw_sprite_ext(sprite, subimg, sprx, spry, xscale, yscale, rot, color, alpha);
}
*/
//TODO: hacky AF pls refactor
light_was_drawn = false;

var i = 0;
var count = ds_list_size(drawsequence);
while (i < count) {
	//TODO: right now just a hacky way of drawing the light surface at a certain level using request[3], refactor the request array in draw_3d and else where and modify logic here
	drawrequest = ds_list_find_value(drawsequence, i);
	if (drawrequest[3] == false) {
		inst = drawrequest[0];
		layr = drawrequest[1];
		height = drawrequest[2];
		//gpu_set_tex_filter(interpolate?);
	
		image_speed = 0.2;
		if (light_was_drawn) {
			color = c_dkgray;
		}
		else {
			color = c_white;
		}
		draw_sprite_ext(inst.sprite_index, layr, inst.x + layr * inst.height * xc, inst.y - layr * inst.height * yc, 1, 1, 0, color, 1);
	}
	else {
		if surface_exists(global.light_surface) {
			gpu_set_blendmode(bm_subtract);
			draw_surface(global.light_surface, 0, 0);
			gpu_set_blendmode(bm_normal);
			light_was_drawn = true;
		}
	}
	i += 1;
}



