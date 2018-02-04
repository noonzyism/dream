draw_sprite_pos(spr_castle, 0, x1, y1, x2, y2, x3, y3, x4, y4, 1);

//draw_sprite_pos(spr_castle, 10, x1s, y1s, x2s, y2s, x3s, y3s, x4s, y4s, 1);

var i = 0;
while (i < 118) {
	draw_sprite_pos(spr_monu1, i, x1 + i*height*sin(camx*pi/180), y1 - i*height*cos(camx*pi/180), x2 + i*height*sin(camx*pi/180), y2 - i*height*cos(camx*pi/180), x3 + i*height*sin(camx*pi/180), y3 - i*height*cos(camx*pi/180), x4 + i*height*sin(camx*pi/180), y4 - i*height*cos(camx*pi/180), 1); 
	i += 1;
}

/*
var i = 0;
while (i < 118) {
	draw_sprite_pos(spr_monu1, i, x1 - (camx/(120 / i)), y1 - (camy/(120 / i)), x2 - (camx/(120 / i)), y2 - (camy/(120 / i)), x3 - (camx/(120 / i)), y3 - (camy/(120 / i)), x4 - (camx/(120 / i)), y4 - (camy/(120 / i)), 1);
	i += 1;
}
*/