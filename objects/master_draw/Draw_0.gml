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

draw_set_alpha(1);
gpu_set_tex_filter(false);

//TODO: hacky AF pls refactor
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
	inst = drawrequest[0];
	height = drawrequest[1];
	spacing = drawrequest[2];
	lighting = drawrequest[3]; //should this obj emit light?
	
	draw_x = inst.x + height * spacing * xc;
	draw_y = inst.y - height * spacing * yc;
	
	if (lighting) { //emit light
		gpu_set_blendmode(bm_subtract);
		surface_set_target(global.light_surface);
		draw_ellipse_color(draw_x - radius - light_surface_x, draw_y - radius - light_surface_y, draw_x + radius - light_surface_x, draw_y + radius - light_surface_y, c_orange, c_black, false);
		surface_reset_target();
		gpu_set_blendmode(bm_normal);
		surface_set_target(application_surface);
		surface_reset_target();
	}
	
	//draw light surface if all remaining requests are above the light surface
	if (height > global.light_level && light_was_drawn == false) {
		//make sure the player is finished being drawn before the lighting layer is drawn
		if (!player_drawn[0]) {
			draw_sprite_ext(player_feet, obj_player.image_index, player_feet_x, player_feet_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[0] = true;
		}
		if (!player_drawn[1]) {
			draw_sprite_ext(player_legs, obj_player.image_index, player_legs_x, player_legs_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[1] = true;
		}
		if (!player_drawn[2]) {
			draw_sprite_ext(player_torso, obj_player.image_index, player_torso_x, player_torso_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[2] = true;
			show_debug_message("drawing at max height [lazy]");
		}
		if (!player_drawn[3]) {
			draw_sprite_ext(player_head, obj_player.image_index, player_head_x, player_head_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[3] = true;
		}
		if surface_exists(global.light_surface) {
			gpu_set_blendmode(bm_subtract);
			draw_surface(global.light_surface, light_surface_x, light_surface_y);
			gpu_set_blendmode(bm_normal);
			light_was_drawn = true;
			color = c_dkgray; //this sets the color for all sprites above the light surface to be dkgray TODO: base this color dynamically off the current lighting level (time of day)
		}
	}
		
	if (screen_y(inst) > screen_y(obj_player)) {
		//player feet
		if	(!player_drawn[0]
			&& master_draw_overlap_exists(left_feet_bound, right_feet_bound, top_feet_bound, bottom_feet_bound))
		{
			draw_sprite_ext(player_feet, obj_player.image_index, player_feet_x, player_feet_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[0] = true;
			show_debug_message("drawing feet just under inst " + string(inst) + " at level " + string(i));
		}
		
		//player legs
		if	(!player_drawn[1]
			&& master_draw_overlap_exists(left_legs_bound, right_legs_bound, top_legs_bound, bottom_legs_bound))
		{
			draw_sprite_ext(player_legs, obj_player.image_index, player_legs_x, player_legs_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[1] = true;
			show_debug_message("drawing legs just under inst " + string(inst) + " at level " + string(i));
		}
		
		//player torso
		if	(!player_drawn[2]
			&& master_draw_overlap_exists(left_torso_bound, right_torso_bound, top_torso_bound, bottom_torso_bound))
		{
			draw_sprite_ext(player_torso, obj_player.image_index, player_torso_x, player_torso_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[2] = true;
			show_debug_message("drawing torso just under inst " + string(inst) + " at level " + string(i));
			draw_circle(inst.x, inst.y, 50, true);
		}
		
		//player head
		if	(!player_drawn[3]
			&& master_draw_overlap_exists(left_head_bound, right_head_bound, top_head_bound, bottom_head_bound))
		{
			draw_sprite_ext(player_head, obj_player.image_index, player_head_x, player_head_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[3] = true;
		}
	}
		
	//draw the sprite for this request
	draw_sprite_ext(inst.sprite_index, height, draw_x, draw_y, 1, 1, 0, color, 1);
	i += 1;
}


if (light_was_drawn == false) {
		//make sure the player is finished being drawn before the lighting layer is drawn
		if (!player_drawn[0]) {
			draw_sprite_ext(player_feet, obj_player.image_index, player_feet_x, player_feet_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[0] = true;
		}
		if (!player_drawn[1]) {
			draw_sprite_ext(player_legs, obj_player.image_index, player_legs_x, player_legs_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[1] = true;
		}
		if (!player_drawn[2]) {
			draw_sprite_ext(player_torso, obj_player.image_index, player_torso_x, player_torso_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[2] = true;
			show_debug_message("drawing at max height v2 [lazy]");
		}
		if (!player_drawn[3]) {
			draw_sprite_ext(player_head, obj_player.image_index, player_head_x, player_head_y, obj_player.image_xscale, obj_player.image_yscale, obj_player.image_angle, c_white, 1);
			player_drawn[3] = true;
		}
		if surface_exists(global.light_surface) {
			gpu_set_blendmode(bm_subtract);
			draw_surface(global.light_surface, light_surface_x, light_surface_y);
			gpu_set_blendmode(bm_normal);
			light_was_drawn = true;
		}
}

gpu_set_tex_filter(true);



draw_set_color(c_green);
draw_line(obj_player.x, obj_player.y, obj_player.x + global.view_upper_x, obj_player.y - global.view_upper_y);
draw_set_color(c_blue);
draw_rectangle(left_feet_bound, top_feet_bound, right_feet_bound, bottom_feet_bound, true);
draw_set_color(c_yellow);
draw_rectangle(inst_72E894B.x + inst_72E894B.left_offset, inst_72E894B.y + inst_72E894B.top_offset, inst_72E894B.x + inst_72E894B.right_offset, inst_72E894B.y + inst_72E894B.bottom_offset, true);
/*
draw_set_color(c_blue);
draw_rectangle(left_feet_bound, top_feet_bound, right_feet_bound, bottom_feet_bound, true);
draw_rectangle(left_feet_bound, top_feet_bound, right_feet_bound, bottom_feet_bound, true);

//x + offset_x(5)

//show_debug_message("view_x="+string(camera_get_view_x(global.cam))+" view_y="+string(camera_get_view_y(global.cam)));


