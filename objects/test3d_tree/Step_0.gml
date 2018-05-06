//xc = height * sin(global.cam_angle * pi/180);
//yc = height * cos(global.cam_angle * pi/180);


if (registered == false) {
	var i = 0;
	while (i < 68) {
		draw_3d(id, i, height);   //this assumes the calling object has a "height" property
		i += 1;
	}
	registered = true;
}
