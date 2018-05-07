//xc = height * sin(global.cam_angle * pi/180);
//yc = height * cos(global.cam_angle * pi/180);

layer_count = sprite_get_number(sprite_index);

if (registered == false) {
	var i = 0;
	while (i < layer_count) {
		draw_3d(id, i, height);   //this assumes the calling object has a "height" property
		i += 1;
	}
	registered = true;
}
