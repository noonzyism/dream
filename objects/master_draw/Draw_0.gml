/// @description Insert description here
// You can write your code in this editor
while (ds_priority_size(drawstack) > 0) {
	drawrequest = ds_priority_delete_max(drawstack);
	var sprite = drawrequest[0];
	var subimg = drawrequest[1];
	var sprx = drawrequest[2];
	var spry = drawrequest[3];
	var xscale = drawrequest[4];
	var yscale = drawrequest[5];
	var rot = drawrequest[6];
	var color = drawrequest[7];
	var alpha = drawrequest[8];
	draw_sprite_ext(sprite, subimg, sprx, spry, xscale, yscale, rot, color, alpha);
}