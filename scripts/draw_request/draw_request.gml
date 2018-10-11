//TODO: super refactor this "request" object to be much more versatile for passing draw requests
//right now I'm going to be hacky and just add a third elem that's just a bool for saying "draw the light surface"

{
	var caller		= argument0; //the calling object's ID
	var height		= argument1; //the height/level to draw the sprite at
	var spacing		= argument2; //the spacing/segmenting between layers
	var lighting	= argument3; //holds all lighting properties if this sprite is a light source
								 //TODO: right now lighting is just a simple true or false, lighting properties are a fixed setting in master draw
								 //make lighting be an array and have variable lighting properties like bloom and radius
	var request;
	request[0] = caller;
	request[1] = height;
	request[2] = spacing;
	request[3] = lighting;
	ds_priority_add(global.drawstack_3d, request, -height);
}


//draw(caller.sprite, caller.x * xc * layer, caller.y * yc * layer)