/// @description Insert description here
// You can write your code in this editor
/*
fogx[0] = 0;
fogx[1] = 0;
fogx[2] = 0;
fogx[3] = 0;
fogx[4] = 0;
fogy[0] = random(640) - 320;
fogy[1] = random(640) - 320;
fogy[2] = random(640) - 320;
fogy[3] = random(640) - 320;
fogy[4] = random(640) - 320;
fogspeed[0] = random(3);
fogspeed[1] = random(3);
fogspeed[2] = random(3);
fogspeed[3] = random(3);
fogspeed[4] = random(3);
*/
camx = global.cam_angle;
camy = global.cam_angle;

for (var i = 0; i < 42; i += 1) {
	fogx[i] = random(1200) * -1;
	fogy[i] = random(2400) - 1200;
	fogspeed[i] = random(2);
}

height = 5;