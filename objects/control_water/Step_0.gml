/// @description Insert description here
// You can write your code in this editor
/*
fogx[0] += fogspeed[0];
fogx[1] += fogspeed[1];
fogx[2] += fogspeed[2];
fogx[3] += fogspeed[3];
fogx[4] += fogspeed[4];
*/

for (var i = 0; i < 42; i += 1) {
	if (fogy[i] > 1200) {
		fogy[i] = -640;
	}
	else {
		fogy[i] += fogspeed[i];
	}
}