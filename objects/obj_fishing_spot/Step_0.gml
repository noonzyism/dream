//every interact-able instance needs this snip of code

if (distance_to_point(mouse_x, mouse_y) < 2) {

	var action;
	action[0] = 8; //the alarm to call on the player for fishing action
	action[1] = 0; //the alarm to call on this object for fishing action
	
	ui_add_opt(id, "fishing spot", "use ", action);
}

//change the fish this spot gives every second to a random possibility - there is no doubt a better way
//to do this, but it'll do for now (rand once when it's actually fetched rather than constantly keeping track)
var rand =  random(300);

if (rand == 100) {
	fish_info = fish[3]; //gold fish = 1/300 chance
}
else {
	fish_info = fish[rand mod 3];
}