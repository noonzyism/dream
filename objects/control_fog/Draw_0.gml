/// @description Insert description here
// You can write your code in this editor
depth = -10000;
for (var i = 0; i < 42; i +=1) 
{
	draw_sprite_ext(spr_fog, -1, fogx[i]+xmodifier, fogy[i]-ymodifier, 1, 1, 0, c_white, 0.3);
}