/// @description Insert description here
// You can write your code in this editor
//request_draw(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1, depth);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);

/*
	//gpu_set_blendmode(bm_add);
	surface_set_target(global.light_surface);
	//draw shadow
	//draw_set_alpha(0.5);
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex(x1,y1);
	draw_vertex(x11,y11);
	draw_vertex(x2,y2);
	draw_vertex(x21,y21);
	draw_vertex(x3,y3);
	draw_vertex(x31,y31);
	draw_vertex(x4,y4);
	draw_vertex(x41,y41);
	draw_vertex(x1,y1);
	draw_vertex(x11,y11);
	draw_primitive_end();
	surface_reset_target();
	//gpu_set_blendmode(bm_normal);