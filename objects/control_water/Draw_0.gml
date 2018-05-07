/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 42; i +=1) 
{
	//request_draw(spr_fog, -1, fogx[i]+xmodifier, fogy[i]-ymodifier, 1, 1, 0, c_white, 0.8, depth);
	draw_sprite_ext(spr_waterflow_test, -1, fogx[i], fogy[i], 1, 1, 0, c_aqua, 0.1);
}