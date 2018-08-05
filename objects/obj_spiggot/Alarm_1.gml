if (move > 0) {
	move = random(16) - 8;
	alarm[1] = move_interval/3;
}
else {
	move = 0;
	alarm[1] = move_interval;
}