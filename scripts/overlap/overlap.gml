//WIP

var lbound1, rbound1, tbound1, bbound1, lbound2, rbound2, tbound2, bbound2;
	lbound1	= argument0;
	rbound1	= argument1;
	tbound1	= argument2;
	bbound1	= argument3;
	lbound2	= argument4;
	rbound2	= argument5;
	tbound2	= argument6;
	bbound2	= argument7;
	
if (lbound1 > rbound2) {
	return false;
}

//not within the x bounds
if (check_x < lbound) || (check_x > rbound) {
	return false;
}

//not within the y bounds
if (check_y < tbound) || (check_y > bbound) {
	return false;
}

return true;