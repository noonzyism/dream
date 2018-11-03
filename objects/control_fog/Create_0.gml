camx = global.cam_angle;
camy = global.cam_angle;

for (var i = 0; i < 42; i += 1) {
	fogx[i] = random(1200) * -1;
	fogy[i] = random(2400) - 1200;
	fogspeed[i] = random(2);
}

height = 5;