//adds a new draw request to master_draw's queue

{
	var caller		= argument0; //the calling object's ID
	var subimg		= argument1; //the image_index of the caller's sprite to draw (-1 for animation)
	var height		= argument2; //the height/level to draw the sprite at
	var lighting	= argument3; //holds all lighting properties if this sprite is a light source
	var complex		= argument4; //whether or not to do complex depth checking (set to true for large objects)
	var slice_pos	= argument5; //if this value is not -1, it indicates the starting y_pos of the slice of this sprite to draw (used for textures)
	var request;
	request[0] = caller;
	request[1] = subimg;
	request[2] = height;
	request[3] = lighting;
	request[4] = complex;
	request[5] = slice_pos;
	ds_priority_add(global.drawstack_3d, request, -height);
}

