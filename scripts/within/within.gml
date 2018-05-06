//returns true if the given point is within the given bounding box

var target, check_x, check_y, lbound, rbound, tbound, bbound;
	check_x	= argument0;
	check_y	= argument1;
	lbound	= argument2;
	rbound	= argument3;
	tbound	= argument4;
	bbound	= argument5;
	

//not within the x bounds
if (check_x < lbound) || (check_x > rbound) {
	return false;
}

//not within the y bounds
if (check_y < tbound) || (check_y > bbound) {
	return false;
}

return true;