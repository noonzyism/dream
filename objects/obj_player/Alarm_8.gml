/// @description fishing action
// TODO this logic has a lot of entropy, need to cleanup

if (target != -1) { //maybe make a more comprehensive check that assures that the target object is fish-able/relevant to the action
	
	if (distance_to_object(target) < 24) {
		if (fishing != true) {
			fishing = true;
			timer = 90;
			notification("Fishing...");
		}
		
		if ((fishing == true) && (timer == 0)) {
			//finished fishing
			if (bag_size < max_bag_size) {
				var item = target.fish_info;
				bag[bag_size] = item;
				bag_size += 1;
				notification("Caught a " + string(item[0]));
			}
			else {
				notification("Inventory full!");
			}
			
			fishing = false;
			timer = -1;
			alarm[8] = -1;
			exit;
		}
	}
	
	
	if ((distance_to_object(target) >= 24) && (fishing == true)) {
		//moved away from the object, cancel action
		fishing = false;
		timer = -1;
		alarm[8] = -1;
	}
	else if (distance_to_object(target) < 24) {
		timer -= 1;
		alarm[8] = 1;
	}

}
else {
	timer = -1;
	fishing = false;
	alarm[8] = -1;
}