//draw_sprite_pos(spr_castle, 10, x1s, y1s, x2s, y2s, x3s, y3s, x4s, y4s, 1);

var i = 0;
while (i < 68) {
	//draw_sprite_pos(spr_tree, i, x1 + i*sin(camx*pi/180), y1 - i*cos(camx*pi/180), x2 + i*sin(camx*pi/180), y2 - i*cos(camx*pi/180), x3 + i*sin(camx*pi/180), y3 - i*cos(camx*pi/180), x4 + i*sin(camx*pi/180), y4 - i*cos(camx*pi/180), 1); 
	request_draw(spr_tree, i, x1 + (i*height)*sin(camx*pi/180), y1 - (i*height)*cos(camx*pi/180), 1, 1, 0, c_white, 1, -i);
	i += 1;
}

/*
var i = 0;
while (i < 118) {
	draw_sprite_pos(spr_monu1, i, x1 - (camx/(120 / i)), y1 - (camy/(120 / i)), x2 - (camx/(120 / i)), y2 - (camy/(120 / i)), x3 - (camx/(120 / i)), y3 - (camy/(120 / i)), x4 - (camx/(120 / i)), y4 - (camy/(120 / i)), 1);
	i += 1;
}
*/