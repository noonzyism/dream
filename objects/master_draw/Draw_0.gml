draw_set_alpha(1);
gpu_set_tex_filter(false);

light_was_drawn = false;
player_drawn[0] = false;
player_drawn[1] = false;
player_drawn[2] = false;
player_drawn[3] = false;

color = c_white;

light_surface_x = global.cam_x - surface_offset_x;
light_surface_y = global.cam_y - surface_offset_y;

player_head = obj_player.spr_head;
player_torso = obj_player.spr_torso;
player_legs = obj_player.spr_legs;
player_feet = obj_player.spr_feet;

var i = 0;
var count = ds_list_size(drawsequence);
while (i < count) {
	drawrequest = ds_list_find_value(drawsequence, i);
	/*
	inst =		drawrequest[0];
	height =	drawrequest[1];
	spacing =	drawrequest[2];
	lighting =	drawrequest[3]; //should this sprite emit light?
	complex =	drawrequest[4]; //depth checking (false = point, true = complex)
	animate =	drawrequest[5]; //animate the sprite?
	*/
	inst =		drawrequest[0];
	subimg =	drawrequest[1];
	height =	drawrequest[2];
	lighting =	drawrequest[3];
	complex =	drawrequest[4];
	slice_pos =	drawrequest[5];
	
	delta_x = (inst.x - obj_player.x)/view_radius; //a value within (-1, 1) indicates the x is on the screen
	delta_y = (inst.y - obj_player.y)/view_radius; //a value within (-1, 1) indicates the y is on the screen
	
	draw_x = inst.x + (height * xc) + (delta_x * height);
	draw_y = inst.y - (height * yc) + (delta_y * height);
	
	if (height >= 50) {
		//at a height of 50, the player can safely be drawn because its "height" never goes beyond this value
		//in other words, if a "you must be this tall to ride" sign was at 50 units, our player would be sad
		if (!player_drawn[0]) {
			draw_sprite_ext(obj_player.spr_feet, obj_player.image_index, player_feet_x, player_feet_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[0] = true;
		}
		if (!player_drawn[1]) {
			draw_sprite_ext(obj_player.spr_legs, obj_player.image_index, player_legs_x, player_legs_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[1] = true;
		}
		if (!player_drawn[2]) {
			draw_sprite_ext(obj_player.spr_torso, obj_player.image_index, player_torso_x, player_torso_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[2] = true;
		}
		if (!player_drawn[3]) {
			draw_sprite_ext(obj_player.spr_head, obj_player.image_index, player_head_x, player_head_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[3] = true;
		}
	}
	
	if (false) { //emit light
		gpu_set_blendmode(bm_subtract);
		surface_set_target(global.light_surface);
		//draw_ellipse_color(draw_x - inst.light_radius - light_surface_x, draw_y - inst.light_radius - light_surface_y, draw_x + inst.light_radius - light_surface_x, draw_y + inst.light_radius - light_surface_y, inst.light_color, c_black, false);
		draw_sprite_ext(spr_spotlight, -1, draw_x - light_surface_x, draw_y - light_surface_y, inst.light_radius/64, inst.light_radius/64, 0, inst.light_color, 1);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
		//surface_set_target(application_surface);
		//surface_reset_target();
	}
	
	//draw light surface if all remaining requests are above the light surface
	if (height > global.light_level && light_was_drawn == false) {
		if surface_exists(global.light_surface) {
			gpu_set_blendmode(bm_subtract);
			draw_surface(global.light_surface, light_surface_x, light_surface_y);
			gpu_set_blendmode(bm_normal);
			light_was_drawn = true;
			color = global.ambient_color; //this sets the color for all sprites above the light surface to be the current time-of-day ambient light
		}
	}
		
	//the distance check of < 500 is just to make sure we don't bother doing these checks if the object is stupidly far away from the player
	if (point_distance(obj_player.x, obj_player.y, inst.x, inst.y) < 500 && master_draw_in_foreground(inst)) {
		//player feet
		if	(!player_drawn[0]
			&& master_draw_overlap_exists(player_feet_x, player_feet_y, 13))
		{
			draw_sprite_ext(obj_player.spr_feet, obj_player.image_index, player_feet_x, player_feet_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[0] = true;
		}
		
		//player legs
		if	(!player_drawn[1]
			&& master_draw_overlap_exists(player_legs_x, player_legs_y, 13))
		{
			draw_sprite_ext(obj_player.spr_legs, obj_player.image_index, player_legs_x, player_legs_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[1] = true;
		}
		
		//player torso
		if	(!player_drawn[2]
			&& master_draw_overlap_exists(player_torso_x, player_torso_y, 20))
		{
			draw_sprite_ext(obj_player.spr_torso, obj_player.image_index, player_torso_x, player_torso_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[2] = true;
		}
		
		//player head
		if	(!player_drawn[3]
			&& master_draw_overlap_exists(player_head_x, player_head_y, 18))
		{
			draw_sprite_ext(obj_player.spr_head, obj_player.image_index, player_head_x, player_head_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
			player_drawn[3] = true;
		}
	}
	
	//draw the sprite for this request
	if (slice_pos == -1) {
		// drawing full sprite
		draw_sprite_ext(inst.sprite_index, subimg, draw_x, draw_y, inst.image_xscale, inst.image_yscale, 0, color, 1);
	}
	else {
		// drawing a single slice of a sprite (used for textures)
		draw_sprite_part_ext(inst.sprite_index, 
						 subimg, 
						 0, 
						 slice_pos, 
						 inst.sprite_width, 
						 2,  //TODO: hard-coded spacing for now
						 draw_x,
						 draw_y,
						 1,
						 1,
						 color,
						 1);
						 
		draw_sprite_part_ext(inst.sprite_index, 
						 subimg, 
						 slice_pos, 
						 0, 
						 2, //TODO: hard-coded spacing for now
						 inst.sprite_height,  
						 draw_x,
						 draw_y,
						 1,
						 1,
						 color,
						 1);		

		draw_sprite_part_ext(inst.sprite_index, 
						 subimg, 
						 0, 
						 slice_pos, 
						 inst.sprite_width, 
						 2,  //TODO: hard-coded spacing for now
						 draw_x,
						 draw_y + inst.sprite_height - 1,
						 1,
						 1,
						 color,
						 1);;
						 
		draw_sprite_part_ext(inst.sprite_index, 
						 subimg, 
						 slice_pos, 
						 0, 
						 2, //TODO: hard-coded spacing for now
						 inst.sprite_height,  
						 draw_x + inst.sprite_width - 1,
						 draw_y,
						 1,
						 1,
						 color,
						 1);
						 

	}
	
	i += 1;
}


if (light_was_drawn == false) {
		if surface_exists(global.light_surface) {
			gpu_set_blendmode(bm_subtract);
			draw_surface(global.light_surface, light_surface_x, light_surface_y);
			gpu_set_blendmode(bm_normal);
			light_was_drawn = true;
		}
}

//draw player if it wasn't drawn in the iteration above
if (!player_drawn[0]) {
	draw_sprite_ext(obj_player.spr_feet, obj_player.image_index, player_feet_x, player_feet_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
	player_drawn[0] = true;
}
if (!player_drawn[1]) {
	draw_sprite_ext(obj_player.spr_legs, obj_player.image_index, player_legs_x, player_legs_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
	player_drawn[1] = true;
}
if (!player_drawn[2]) {
	draw_sprite_ext(obj_player.spr_torso, obj_player.image_index, player_torso_x, player_torso_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
	player_drawn[2] = true;
}
if (!player_drawn[3]) {
	draw_sprite_ext(obj_player.spr_head, obj_player.image_index, player_head_x, player_head_y, 0.5, 0.5, obj_player.image_angle, c_white, 1);
	player_drawn[3] = true;
}

gpu_set_tex_filter(true);
//surface_reset_target();