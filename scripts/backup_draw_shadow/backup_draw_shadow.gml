/*
this code was placed under the draw_sprite_ext line of master_draw, an attempt at shadows
problems:
	-in current form, shades the entire 3d object (doesn't leave 1 face lit up based on light position)
	-only really works for 1 light at a time, multi-light would potentially be expensive + unexpected behavior

*/

if (layr <= global.light_level - 1) && (inst.projectShadow) {
			//draw shadow based on the sprite just one level beneath the light surface level - this is so that sprites underneath (on the lit side of the object) are not covered by the shadow
			bwx = 256;
			bwy = 128;
			x1 = draw_x-(bwx/2) - 4;
			y1 = draw_y-(bwy/2) - 40;
			x2 = draw_x-(bwx/2) - 4;
			y2 = draw_y+(bwy/2) - 40;
			x3 = draw_x+(bwx/2) - 4;
			y3 = draw_y+(bwy/2) - 40;
			x4 = draw_x+(bwx/2) - 4;
			y4 = draw_y-(bwy/2) - 40;
			
			
			xbase = inst.x;
			ybase = inst.y;
			//for now, using mouse coords as light origin
			shadow_dir = point_direction(mouse_x, mouse_y, xbase, ybase); //direction from mouse to edge of the wall
			
			//shadow vertices
			x11 = x1 + lengthdir_x(200, shadow_dir); //length of shadow is set to 200 here
			y11 = y1 + lengthdir_y(200, shadow_dir);
	
			x21 = x2 + lengthdir_x(200, shadow_dir);
			y21 = y2 + lengthdir_y(200, shadow_dir);
	
			x31 = x3 + lengthdir_x(200, shadow_dir);
			y31 = y3 + lengthdir_y(200, shadow_dir);
	
			x41 = x4 + lengthdir_x(200, shadow_dir);
			y41 = y4 + lengthdir_y(200, shadow_dir);
			
			//draw shadow
			surface_set_target(global.light_surface);
			draw_set_alpha(1);
			//gpu_set_blendmode(bm_subtract);
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
			surface_set_target(application_surface);
			surface_reset_target();
		}