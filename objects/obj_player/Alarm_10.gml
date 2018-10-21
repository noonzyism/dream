/// @description clicked on item to pick up

if (target != -1) {
	if (distance_to_object(target) < 2) {
		if (bag_size < max_bag_size) {
			//pick up object
			//adding item to bag
			var item = target.info;
			bag[bag_size] = item;
			bag_size += 1;
			notification("Retrieved " + string(item[0]));
		
			with (target) {
				instance_destroy();
			}
		}
		else {
			notification("Inventory is full!");
		}
	}
	else {
		alarm[10] = 1; //check again next step
	}
}