


dist = distance_to_point(obj_player.destx, obj_player.desty);

if (dist > 32) {
	speed = 4;
}
else {
	speed = 0;
}

if (speed < 0) speed = 0;


move_towards_point(obj_player.destx, obj_player.desty, speed);


