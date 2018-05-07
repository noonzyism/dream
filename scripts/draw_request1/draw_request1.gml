//TODO: super refactor this "request" object to be much more versatile for passing draw requests
//right now I'm going to be hacky and just add a third elem that's just a bool for saying "draw the light surface"

{
	var caller = argument0; //the calling object's ID
	var height = argument1;
	var spacing = argument2;
	
	var request;
	request[0] = caller;
	request[1] = height;
	request[2] = spacing;
	ds_priority_add(global.drawstack_3d, request, -height);
}


//draw(caller.sprite, caller.x * xc * layer, caller.y * yc * layer)