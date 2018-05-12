{
	var caller		= argument0; //the calling object's ID
	var name		= argument1; //the object's friendly UI name
	var verb		= argument2; //the way the player can interact with the object
	var action		= argument3; //holds all info for calling back the relevant object(s) on selection
	
	var opt;
	opt[0] = caller;
	opt[1] = name;
	opt[2] = verb;
	opt[3] = action;
	ds_queue_enqueue(global.opts, opt);
}


//draw(caller.sprite, caller.x * xc * layer, caller.y * yc * layer)