{
	var request;
	request[0]	= argument0; //sprite
	request[1]	= argument1; //subimg
	request[2]	= argument2; //sprx
	request[3]	= argument3; //spry
	request[4]	= argument4; //xscale
	request[5]	= argument5; //yscale
	request[6]	= argument6; //rot
	request[7]	= argument7; //color
	request[8]	= argument8; //alpha
	
	ds_priority_add(global.drawstack, request, argument9);
}