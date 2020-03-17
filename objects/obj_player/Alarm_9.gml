/// @description mining action
// TODO this logic has a lot of entropy, need to cleanup

if (target != -1) { //maybe make a more comprehensive check that assures that the target object is a mine-able rock/relevant to the action
	
	if (distance_to_object(target) < 1) {
		if (mining != true) {
			if (bag_size < max_bag_size) {
				if (has_pickaxe()) {
					mining = true;
					timer = 90;
					notification("Mining...");
				}
				else {
					notification("You don't have a pickaxe!");
				}
			}
			else {
				notification("Inventory is full!");
			}
		}
		
		if ((mining == true) && (timer == 0)) {
			//finished mining rock
			var item = target.rock_info;
			bag[bag_size] = item;
			bag_size += 1;
			notification("Retrieved " + string(item[0]));
			
			with (target) {
				instance_destroy();
			}
		
			mining = false;
			timer = -1;
			alarm[9] = -1;
			exit;
		}
	}
	
	
	if ((distance_to_object(target) >= 1) && (mining == true)) {
		//moved away from the object, cancel action
		mining = false;
		timer = -1;
		alarm[9] = -1;
	}
	else if (distance_to_object(target) < 1) {
		timer -= 1;
		alarm[9] = 1;
	}

}
else {
	mining = false;
	alarm[9] = -1;
}