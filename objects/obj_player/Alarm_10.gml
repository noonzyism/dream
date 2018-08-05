//clicked on item to pick up

if (target != -1) {
	if (distance_to_object(target) < 2) {
		//pick up object
		
		//adding item to bag
		var item = target.info;
		//ds_list_add(bag, item);
		bag[bag_size] = item;
		bag_size += 1;
		notification("Retrieved " + string(item[0]));
		
		with (target) {
			instance_destroy();
		}
	}
	else {
		alarm[10] = 1; //check again next step
	}
}