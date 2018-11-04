//adds a new draw request to master_draw's queue

{
	var caller		= argument0; //the calling object's ID
	var height		= argument1; //the height/level to draw the sprite at
	var spacing		= argument2; //the spacing/segmenting between layers
	var lighting	= argument3; //holds all lighting properties if this sprite is a light source
	var complex		= argument4; //whether or not to do complex depth checking (set to true for large objects)
	var animate		= argument5; //(true = draw the caller's sprite as an animation sequence; false = use the static image index given by the height)
	var request;
	request[0] = caller;
	request[1] = height;
	request[2] = spacing;
	request[3] = lighting;
	request[4] = complex;
	request[5] = animate;
	ds_priority_add(global.drawstack_3d, request, -height);
}