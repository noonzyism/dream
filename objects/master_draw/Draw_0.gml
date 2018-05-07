/*
while (ds_priority_size(global.drawstack) > 0) {
	drawrequest = ds_priority_delete_max(global.drawstack);
	
	var sprite = drawrequest[0];
	var subimg = drawrequest[1];
	var sprx = drawrequest[2];
	var spry = drawrequest[3];
	var xscale = drawrequest[4];
	var yscale = drawrequest[5];
	var rot = drawrequest[6];
	var color = drawrequest[7];
	var alpha = drawrequest[8];
	
	//gpu_set_tex_filter(interpolate?);
	
	image_speed = 0.2;

	draw_sprite_ext(sprite, subimg, sprx, spry, xscale, yscale, rot, color, alpha);
}
*/


//TODO: hacky AF pls refactor
light_was_drawn = false;
player_drawn[0] = false;
player_drawn[1] = false;
player_drawn[2] = false;
player_drawn[3] = false;

var i = 0;
var count = ds_list_size(drawsequence);
while (i < count) {
	//TODO: right now just a hacky way of drawing the light surface at a certain level using request[3], refactor the request array in draw_3d and elsewhere and modify logic here
	drawrequest = ds_list_find_value(drawsequence, i);
	if (drawrequest[3] == false) { //currently used to check if this is/isn't the draw request for the light layer, false means it's not
		inst = drawrequest[0];
		layr = drawrequest[1];
		height = drawrequest[2];
		//gpu_set_tex_filter(interpolate?);
	
		image_speed = 0.2;
		if (light_was_drawn) {
			color = c_dkgray;
		}
		else {
			color = c_white;
		}
		
		draw_x = inst.x + layr * inst.height * xc;
		draw_y = inst.y - layr * inst.height * yc;
		
		if (inst.y > obj_player.y) {
			//player feet
			if	(!player_drawn[0]
				&& within(draw_x, draw_y, left_feet_bound, right_feet_bound, top_feet_bound, bottom_feet_bound))
			{
				draw_sprite_ext(spr_nium_feet, obj_player.image_index, player_feet_x, player_feet_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
				player_drawn[0] = true;
			}
		
			//player legs
			if	(!player_drawn[1]
				&& within(draw_x, draw_y, left_legs_bound, right_legs_bound, top_legs_bound, bottom_legs_bound))
			{
				draw_sprite_ext(spr_nium_legs, obj_player.image_index, player_legs_x, player_legs_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
				player_drawn[1] = true;
			}
		
			//player torso
			if	(!player_drawn[2]
				&& within(draw_x, draw_y, left_torso_bound, right_torso_bound, top_torso_bound, bottom_torso_bound))
			{
				draw_sprite_ext(spr_nium_torso, obj_player.image_index, player_torso_x, player_torso_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
				player_drawn[2] = true;
			}
		
			//player head
			if	(!player_drawn[3]
				&& within(draw_x, draw_y, left_head_bound, right_head_bound, top_head_bound, bottom_head_bound))
			{
				draw_sprite_ext(spr_nium_head, obj_player.image_index, player_head_x, player_head_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
				player_drawn[3] = true;
			}
		}
		
		//draw the sprite for this request
		draw_sprite_ext(inst.sprite_index, layr, draw_x, draw_y, 1, 1, 0, color, 1);
	}
	else {
		//make sure the player is finished being drawn before the lighting layer is drawn
		if (!player_drawn[0]) {
			draw_sprite_ext(spr_nium_feet, obj_player.image_index, player_feet_x, player_feet_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[0] = true;
		}
		if (!player_drawn[1]) {
			draw_sprite_ext(spr_nium_legs, obj_player.image_index, player_legs_x, player_legs_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[1] = true;
		}
		if (!player_drawn[2]) {
			draw_sprite_ext(spr_nium_torso, obj_player.image_index, player_torso_x, player_torso_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[2] = true;
		}
		if (!player_drawn[3]) {
			draw_sprite_ext(spr_nium_head, obj_player.image_index, player_head_x, player_head_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[3] = true;
		}
		if surface_exists(global.light_surface) {
			gpu_set_blendmode(bm_subtract);
			draw_surface(global.light_surface, 0, 0);
			gpu_set_blendmode(bm_normal);
			light_was_drawn = true;
		}
	}
	i += 1;
}

/*
if (!player_was_drawn) {
	draw_sprite_ext(spr_nium, obj_player.image_index, obj_player.x, obj_player.y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_dkgray, 1);
	player_was_drawn = true;
}
*/


