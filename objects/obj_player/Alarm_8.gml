/// @description fishing action

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
			
			//levels[8, 1] += irandom(target.xp); //increase XP
			levels[8, 1] += 25;
			if (levels[8, 1] > 100) {
				levels[8, 1] = 0;
				levels[8, 0] += 1;
				notification("Your fishing level is now " + string(levels[8, 0]));
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
	else {
		timer -= 1;
		alarm[8] = 1;
	}

}
else {
	timer = -1;
	fishing = false;
	alarm[8] = -1;
}