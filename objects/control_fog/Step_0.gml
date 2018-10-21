camx = global.cam_angle;
camy = global.cam_angle;
xmodifier = (60*height)*sin(camx*pi/180);
ymodifier = (60*height)*cos(camx*pi/180);

for (var i = 0; i < 42; i += 1) {
	if (fogx[i] > 1200) {
		fogx[i] = -640;
	}
	else {
		fogx[i] += fogspeed[i];
	}
}