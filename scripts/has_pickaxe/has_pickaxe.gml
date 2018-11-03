var i = 0; //bag array index
var item;

while (i < bag_size) {
	item = bag[i];
	//101 is our designated ID for our pickaxe object
	if (item[2] == 101) {
		return true;
	}
	i += 1;
}

return false;