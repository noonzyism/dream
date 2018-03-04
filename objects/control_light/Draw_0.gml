/// @description Insert description here
// You can write your code in this editor

//testing stuff 

//night time overlay
//request_draw(sprite22, -1, -640, -640, 3, 3,  0, c_black, 0.7, -1001);

//spotlight
//request_draw(spr_spotlight_test, -1, mouse_x, mouse_y, 0.7, 0.7,  0, c_yellow, 0.5, -61);

if surface_exists(light_surface) {
	gpu_set_blendmode(bm_subtract);
	draw_surface(light_surface, 0, 0);
	gpu_set_blendmode(bm_normal);
}