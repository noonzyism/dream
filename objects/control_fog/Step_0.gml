/// @description Insert description here
// You can write your code in this editor
/*
fogx[0] += fogspeed[0];
fogx[1] += fogspeed[1];
fogx[2] += fogspeed[2];
fogx[3] += fogspeed[3];
fogx[4] += fogspeed[4];
*/
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