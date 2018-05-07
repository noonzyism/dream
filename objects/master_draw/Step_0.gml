//used for light-emitting objects
radius += bloom;

//used for calculating 3d projections
xc = sin(global.cam_angle * pi/180);
yc = cos(global.cam_angle * pi/180);

player_x		= obj_player.x;
player_y		= obj_player.y;
player_feet_x	= player_x;
player_feet_y	= player_y;
player_legs_x	= player_x + 6*xc;
player_legs_y	= player_y - 6*yc;
player_torso_x	= player_x + 25*xc;
player_torso_y	= player_y - 25*yc;
player_head_x	= player_x + 50*xc;
player_head_y	= player_y - 50*yc;

//some sprite box collision variables for the player
left_feet_bound		= player_feet_x + obj_player.left_feet_offset;
right_feet_bound	= player_feet_x + obj_player.right_feet_offset;
top_feet_bound		= player_feet_y + obj_player.top_feet_offset;
bottom_feet_bound	= player_feet_y + obj_player.bottom_feet_offset;

left_legs_bound		= player_legs_x + obj_player.left_legs_offset;
right_legs_bound	= player_legs_x + obj_player.right_legs_offset;
top_legs_bound		= player_legs_y + obj_player.top_legs_offset;
bottom_legs_bound	= player_legs_y + obj_player.bottom_legs_offset; 

left_torso_bound	= player_torso_x + obj_player.left_torso_offset;
right_torso_bound	= player_torso_x + obj_player.right_torso_offset;
top_torso_bound		= player_torso_y + obj_player.top_torso_offset;
bottom_torso_bound	= player_torso_y + obj_player.bottom_torso_offset; 

left_head_bound		= player_head_x + obj_player.left_head_offset;
right_head_bound	= player_head_x + obj_player.right_head_offset;
top_head_bound		= player_head_y + obj_player.top_head_offset;
bottom_head_bound	= player_head_y + obj_player.bottom_head_offset;

//convert our drawstack (ordered by depth) to an iterable list for quick drawing
if (ds_list_size(drawsequence) != ds_priority_size(global.drawstack_3d)) {
	ds_list_clear(drawsequence);
	var count = ds_priority_size(global.drawstack_3d);
	var i = 0;
	var tempstack = ds_priority_create();
	ds_priority_copy(tempstack, global.drawstack_3d);
	
	while (i < count) {
		ds_list_add(drawsequence, ds_priority_delete_max(tempstack));
		i += 1;
	}
}