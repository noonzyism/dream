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
	
	
//obvious cases
if (lbound1 > rbound2 || lbound2 > rbound1) {
	return false;
}

if (tbound1 < bbound2 || tbound2 < bbound1) {
	return false;
}

return true;