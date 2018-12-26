i = 0;

while (i < layer_count) {
	rand[i] = random(6) - 3;
	i += 1;
}

if (last_cam_angle != global.cam_angle) {
	last_cam_angle = global.cam_angle;
	alarm[0] = 3; //as the camera moves, we want to rapidly displace the reflection so that the water doesn't look smooth
}
else {
	alarm[0] = 15;
}

