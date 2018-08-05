//movement
destx = x;
desty = y;
velocity = 3.5; //speed at which the player moves
move_angle = 0;
depth = -8;

//sprite/drawing variables
spr_feet	= spr_nium_feet;
spr_legs	= spr_nium_legs;
spr_torso	= spr_nium_torso;
spr_head	= spr_nium_head;

//boundary offsets from the sprite origin
left_feet_offset = sprite_get_bbox_left(spr_feet) - sprite_get_xoffset(spr_feet);
right_feet_offset = sprite_get_bbox_right(spr_feet) - sprite_get_xoffset(spr_feet);
bottom_feet_offset = sprite_get_bbox_bottom(spr_feet) - sprite_get_yoffset(spr_feet);
top_feet_offset = sprite_get_bbox_top(spr_feet) - sprite_get_yoffset(spr_feet);

left_legs_offset = sprite_get_bbox_left(spr_legs) - sprite_get_xoffset(spr_legs);
right_legs_offset = sprite_get_bbox_right(spr_legs) - sprite_get_xoffset(spr_legs);
bottom_legs_offset = sprite_get_bbox_bottom(spr_legs) - sprite_get_yoffset(spr_legs);
top_legs_offset = sprite_get_bbox_top(spr_legs) - sprite_get_yoffset(spr_legs);

left_torso_offset = sprite_get_bbox_left(spr_torso) - sprite_get_xoffset(spr_torso);
right_torso_offset = sprite_get_bbox_right(spr_torso) - sprite_get_xoffset(spr_torso);
bottom_torso_offset = sprite_get_bbox_bottom(spr_torso) - sprite_get_yoffset(spr_torso);
top_torso_offset = sprite_get_bbox_top(spr_torso) - sprite_get_yoffset(spr_torso);

left_head_offset = sprite_get_bbox_left(spr_head) - sprite_get_xoffset(spr_head);
right_head_offset = sprite_get_bbox_right(spr_head) - sprite_get_xoffset(spr_head);
bottom_head_offset = sprite_get_bbox_bottom(spr_head) - sprite_get_yoffset(spr_head);
top_head_offset = sprite_get_bbox_top(spr_head) - sprite_get_yoffset(spr_head);

image_xscale = 0.5;
image_yscale = 0.5;

mouse_dir = point_direction(x, y, mouse_x, mouse_y);

///////////////////////////////////////////////////////////////////////////////////////////////
//setting initial skill levels
///////////////////////////////////////////////////////////////////////////////////////////////
levels[0, 0] = 1;		//attack
levels[1, 0] = 1;		//strength
levels[2, 0] = 1;		//defence
levels[3, 0] = 1;		//magic
levels[4, 0] = 1;		//archery
levels[5, 0] = 1;		//faith
levels[6, 0] = 1;		//health
levels[7, 0] = 1;		//woodcutting
levels[8, 0] = 1;		//fishing
levels[9, 0] = 1;		//mining
levels[10, 0] = 1;		//smelting
levels[11, 0] = 1;		//smithing 
levels[12, 0] = 1;		//carpentry (includes RS's fletching)
levels[13, 0] = 1;		//cooking
levels[14, 0] = 1;		//crafting (small jewelry & tools)
levels[15, 0] = 1;		//engineering (larger machinery)
levels[16, 0] = 1;		//stamina (increases movement speed and stamina bar regeneration)
levels[17, 0] = 1;		//athleticism (allows passing obstacles and reduces stamina diminishing)
levels[18, 0] = 1;		//nursing (allows for treating and healing other players)
levels[19, 0] = 1;		//breeding (raising animals)
levels[20, 0] = 1;		//farming (growing)
levels[21, 0] = 1;		//herblore (potion making)
levels[22, 0] = 1;		//tailoring (creation of many clothing/armor items)
levels[23, 0] = 1;		//navigation (increases minimap range, adds more markers to maps, creation of maps)
levels[24, 0] = 1;		//taming (allows higher level followers)
levels[25, 0] = 1;		//sailing
levels[26, 0] = 1;		//merchanting (player-owned shops, increased by trading)
levels[27, 0] = 1;		//speech (npc shop related, increased through dialogue and purchasing goods)
levels[28, 0] = 1;
levels[29, 0] = 1;
levels[30, 0] = 1;
levels[31, 0] = 1;
levels[32, 0] = 1;
levels[33, 0] = 1;

//XP for each level
levels[0, 1] = 0;		//attack
levels[1, 1] = 0;		//strength
levels[2, 1] = 0;		//defence
levels[3, 1] = 0;		//magic
levels[4, 1] = 0;		//archery
levels[5, 1] = 0;		//faith
levels[6, 1] = 0;		//health
levels[7, 1] = 0;		//woodcutting
levels[8, 1] = 0;		//fishing
levels[9, 1] = 0;		//mining
levels[10, 1] = 0;		//smelting
levels[11, 1] = 0;		//smithing 
levels[12, 1] = 0;		//carpentry (includes RS's fletching)
levels[13, 1] = 0;		//cooking
levels[14, 1] = 0;		//crafting (small jewelry & tools)
levels[15, 1] = 0;		//engineering (larger machinery)
levels[16, 1] = 0;		//stamina (increases movement speed and stamina bar regeneration)
levels[17, 1] = 0;		//athleticism (allows passing obstacles and reduces stamina diminishing)
levels[18, 1] = 0;		//nursing (allows for treating and healing other players)
levels[19, 1] = 0;		//breeding (raising animals)
levels[20, 1] = 0;		//farming (growing)
levels[21, 1] = 0;		//herblore (potion making)
levels[22, 1] = 0;		//tailoring (creation of many clothing/armor items)
levels[23, 1] = 0;		//navigation (increases minimap range, adds more markers to maps, creation of maps)
levels[24, 1] = 0;		//taming (allows higher level followers)
levels[25, 1] = 0;		//sailing
levels[26, 1] = 0;		//merchanting (player-owned shops, increased by trading)
levels[27, 1] = 0;		//speech (npc shop related, increased through dialogue and purchasing goods)
levels[28, 1] = 0;
levels[29, 1] = 0;
levels[30, 1] = 0;
levels[31, 1] = 0;
levels[32, 1] = 0;
levels[33, 1] = 0;

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
//bag = ds_list_create();

bag = array_create(4, []);
bag_size = 0;