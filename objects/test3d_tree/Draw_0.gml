/*
var i = 0;

while (i < 68) {
	request_draw(spr_tree, i, x + i*xc, y - i*yc, 1, 1, 0, c_white, 1, -i);	
	i += 1;
}


//3d optimization brainstorming shit
//while (i < 68) {
	//3d_draw(spr_tree, i, height)
		//request = [spr_tree, i, height]
		//add to array drawstack[request] sorted by i (depth)
		//draw_sprite(spr_tree, blah, i*height*3dx(), i*height*3dy())
	
	//request_draw(spr_tree, i, x, y, 1, 1, 0, c_white, 1, -i);
	//testx = x + i*xc;
	//testy = y + i*yc;
	//draw_sprite_ext(spr_tree, i, x + i*xc, y - i*yc, 1, 1, 0, c_white, 1);
	
	
	
	//draw_3d(spr_tree, i, height);
	//ONLY CALL THIS ONCE
	//draw_3d(id)   //this assumes the calling object has a "height" property
	//i +=1;
