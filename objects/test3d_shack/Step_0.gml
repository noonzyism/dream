if (registered == false) {
	var i = 0;
	while (i < 21) {
		draw_3d(id, i, height);   //this assumes the calling object has a "height" property
		i += 1;
	}
	registered = true;
}