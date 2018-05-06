//TODO: super refactor this "request" object to be much more versatile for passing draw requests
//right now I'm going to be hacky and just add a third elem that's just a bool for saying "draw the light surface"
//literally this script is the same as draw_3d but passes in true for the last request elem
{
	var caller = argument0; //the calling object's ID
	
	var request;
	request[0] = caller;
	request[1] = argument1;
	request[2] = argument2;
	request[3] = true;
	ds_priority_add(global.drawstack_3d, request, -argument1);
}


//draw(caller.sprite, caller.x * xc * layer, caller.y * yc * layer)