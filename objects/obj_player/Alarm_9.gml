/// @description mining action

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
	else {
		timer -= 1;
		alarm[9] = 1;
	}

}
else {
	mining = false;
	alarm[9] = -1;
}









/*
//note: there's a very small chance here that the player can walk away from the ore, return and still fetch the ore if they time it so that they are within distance of the ore just as the mining callback happens
//one alternative approach that might solve that is having a continuous run of this code while mining instead of calling back to it

if (target != -1) {
	if (distance_to_object(target) < 2) {
		
		if (mining == true) {
			//if the player was already mining, rock has finished being mined
			with (target) {
				instance_destroy();
			}
			mining = false;
		}
		else {
			//start mining
			mining = true;
			notification("Mining...");
			alarm[9] = 360; //callback to finish mining rock
		}
		
	}
	else {
		mining = false;
		alarm[9] = 1; //check again next step
	}
}
else {
	mining = false;
}