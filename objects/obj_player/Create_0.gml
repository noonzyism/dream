//movement
destx = x;
desty = y;
velocity = 3.5; //speed at which the player moves
move_angle = 0;
depth = -8;
moving = false;

//sprite/drawing variables
spr_feet	= spr_player_feet;
spr_legs	= spr_player_legs;
spr_torso	= spr_player_torso;
spr_head	= spr_player_head;

image_speed = 0.1;

image_xscale = 0.5;
image_yscale = 0.5;

//boundary offsets from the sprite origin
left_feet_offset = (sprite_get_bbox_left(spr_feet) - sprite_get_xoffset(spr_feet)) * image_xscale * 1.5;
right_feet_offset = (sprite_get_bbox_right(spr_feet) - sprite_get_xoffset(spr_feet)) * image_xscale * 1.5;
bottom_feet_offset = (sprite_get_bbox_bottom(spr_feet) - sprite_get_yoffset(spr_feet)) * image_yscale * 1.5;
top_feet_offset = (sprite_get_bbox_top(spr_feet) - sprite_get_yoffset(spr_feet)) * image_yscale * 1.5;

left_legs_offset = (sprite_get_bbox_left(spr_legs) - sprite_get_xoffset(spr_legs)) * image_xscale * 1.5;
right_legs_offset = (sprite_get_bbox_right(spr_legs) - sprite_get_xoffset(spr_legs)) * image_xscale * 1.5;
bottom_legs_offset = (sprite_get_bbox_bottom(spr_legs) - sprite_get_yoffset(spr_legs)) * image_yscale * 1.5;
top_legs_offset = (sprite_get_bbox_top(spr_legs) - sprite_get_yoffset(spr_legs)) * image_yscale * 1.5;

left_torso_offset = (sprite_get_bbox_left(spr_torso) - sprite_get_xoffset(spr_torso)) * image_xscale;
right_torso_offset = (sprite_get_bbox_right(spr_torso) - sprite_get_xoffset(spr_torso)) * image_xscale;
bottom_torso_offset = (sprite_get_bbox_bottom(spr_torso) - sprite_get_yoffset(spr_torso)) * image_yscale;
top_torso_offset = (sprite_get_bbox_top(spr_torso) - sprite_get_yoffset(spr_torso)) * image_yscale;

left_head_offset = (sprite_get_bbox_left(spr_head) - sprite_get_xoffset(spr_head)) * image_xscale;
right_head_offset = (sprite_get_bbox_right(spr_head) - sprite_get_xoffset(spr_head)) * image_xscale;
bottom_head_offset = (sprite_get_bbox_bottom(spr_head) - sprite_get_yoffset(spr_head)) * image_yscale;
top_head_offset = (sprite_get_bbox_top(spr_head) - sprite_get_yoffset(spr_head)) * image_yscale;

mouse_dir = point_direction(x, y, mouse_x, mouse_y);


///////////////////////////////////////////////////////////////////////////////////////////////
//action variables (used by action alarms)
///////////////////////////////////////////////////////////////////////////////////////////////

//object interactivity
target = -1; //this variable will hold the instance id of the current thing being interacted with, set by ui click

mining = false;		//mining-specific action variable (only set to true once mining is actually taking place)
fishing = false;
timer = -1;			//used to calculate how much time has elapsed doing the action

///////////////////////////////////////////////////////////////////////////////////////////////
//inventory
///////////////////////////////////////////////////////////////////////////////////////////////
max_bag_size = 10;
bag = array_create(max_bag_size, []);
bag_size = 0;