for (var i = 0; i < 42; i += 1) {
	if (fogy[i] > 1200) {
		fogy[i] = -640;
	}
	else {
		fogy[i] += fogspeed[i];
	}
}